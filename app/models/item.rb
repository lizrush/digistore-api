class Item < ActiveRecord::Base
  belongs_to :order

  validates :quantity,
            :currentprice,
            :product_avatar,
            :product_name, presence: :true
end
