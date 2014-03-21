class Item < ActiveRecord::Base
  belongs_to :order

  validates :quantity, :currentprice, :avatar, presence: :true
end
