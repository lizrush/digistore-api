class Order < ActiveRecord::Base

  validates :customer_name,
            :email,
            :zipcode,
            :expdate,
            :ccv,
            :ccnumber,
            :total, presence: true

end
