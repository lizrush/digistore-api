class Product < ActiveRecord::Base
    validates :name, presence: :true, uniqueness: :true
    validates :price, :image, :avatar, presence: :true
end
