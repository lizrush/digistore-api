json.items @items do |item|
  json.extract! item, :id, :product, :quantity, :currentprice, :created_at, :updated_at
end
