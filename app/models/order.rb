class Order < ActiveRecord::Base

  validates :cart, presence: true, uniqueness: true,
  validates :customer_name, :email, :zipcode, :expdate, :ccv, :ccnumber, presence: true

end
