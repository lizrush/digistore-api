class Product < ActiveRecord::Base
    has_many :items
    validates :name, presence: :true, uniqueness: :true
    validates :price, :image, :avatar, presence: :true
end
