json.product do
  json.extract! @product, :id, :name, :price, :description, :image, :avatar, :created_at, :updated_at
end
