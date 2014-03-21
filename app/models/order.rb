class Order < ActiveRecord::Base

  validates :customer_name, :email, :zipcode, :expdate, :ccv, :ccnumber, presence: true

end
