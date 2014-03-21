json.orders @orders do |order|
  json.extract!  order, :id, :customer_name, :email, :status, :zipcode, :expdate, :ccv, :ccnumber, :created_at, :updated_at
  json.items items.map {|item| item.id}
end
