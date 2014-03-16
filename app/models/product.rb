class Product < ActiveRecord::Base
  validates :name, presence: :true, uniqness: :true
end
