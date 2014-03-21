json.items @items do |item|
  json.extract! item, :id, :product_name, :avatar, :quantity, :currentprice, :created_at, :updated_at
end
