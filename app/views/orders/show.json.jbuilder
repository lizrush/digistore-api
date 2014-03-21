json.order do
  json.extract!  @order, :id, :customer_name, :email, :status, :zipcode, :expdate, :ccv, :ccnumber, :total, :created_at, :updated_at
  json.items @order.items.map {|item| item.id}
end
