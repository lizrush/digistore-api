class Item < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :quantity,
            :currentprice,
            :product_avatar,
            :product_name, presence: :true
end

