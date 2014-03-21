class Item < ActiveRecord::Base
  belongs_to :order

  validates :quantity,
            :currentprice,
            :product_avatar,
            :product_name, presence: :true

  def create_all_items(items)
      items.each do |item|
        Item.create(
          product_name: item[:product_name],
          product_avatar: item[:product_avatar],
          quantity: item[:quantity],
          currentprice: item[:currentprice]
          )
      rescue ActiveRecord::RecordInvalid
        nil
      end
  end

end

