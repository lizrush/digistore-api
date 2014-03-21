class Item < ActiveRecord::Base
  belongs_to :order

  validates :quantity, :currentprice, :avatar, :product_name, presence: :true
end
