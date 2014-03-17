require 'spec_helper'

describe ProductsController do

  describe "Products index" do
    it "should get 200" do
      get :index, format: :json
      response.status.should == 200
    end

    it "should get products as json by default" do
      get :index, @valid_params
      response.should be_success
      response.body.should == {results: []}.to_json
    end

    it "should get a list of products as json" do
      product1 = FactoryGirl.create(:product)
      product2 = FactoryGirl.create(:product {name: "test product"})
      get :index, @valid_params
      response.should be_success
      response.body.should be_json_eql({results: Product.all}
                                        .to_json)
                                        .excluding(:description)
    end

    it "should not find the product and return 404" do
      get :show, @valid_params.merge(:id => 9999)
      response.status.should == 404
    end

    it "should find the product and return it as json" do
      product = FactoryGirl.create(:product)
      get :show, @valid_params.merge(:id => product.id)
      response.should be_success
      response.body.should be_json_eql(Product.first.to_json)
                                        .excluding(:description)
    end
  end

    describe "creating a product" do

    it "should create a product" do
      params = {name: "hello",
                description: 'testcat',
                price: '1000'}
      post :create, @valid_params.merge(product: params)

      response.status.should == 201
      Product.all.count.should be(1)

      response.body.should be_json_eql(Product.first.to_json)
                                      .excluding(:description)

    end

    it "should not create a product when missing fields" do
      post :create, product: {name: "test product"}, format: :json
      response.status.should == 422
    end

    it "should not create a product when missing name" do
      post :create, product: {name: nil}, format: :json
      response.status.should == 422
    end

    it "should not create a product when duplicate name" do
      product = FactoryGirl.create(:product)
      post :create, product: {name: product.name}, format: :json
      response.status.should == 422
    end
  end
end
