json.products @products do |product|
  json.extract! product, :id, :name, :price, :description, :image, :avatar, :created_at, :updated_at
end
