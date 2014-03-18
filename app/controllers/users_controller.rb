class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    set_user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      respond_with(@user, status: :created)
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

   def destroy
    set_user
    @user.destroy
    render json: "", status: :no_content
  end

  def update
    set_user
    if @user.update(user_params)
      render "show"
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :zipcode, :expdate, :ccv, :ccnumber, :admin)
    end
end
