class Order < ActiveRecord::Base
  has_many :items
  validates :customer_name,
            :email,
            :zipcode,
            :expdate,
            :ccv,
            :ccnumber,
            :total, presence: true

end
