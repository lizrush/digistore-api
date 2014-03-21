json.item do
  json.extract! @item, :id, :product_name, :product_id, :product_avatar, :quantity, :currentprice, :order_id, :created_at, :updated_at
end
