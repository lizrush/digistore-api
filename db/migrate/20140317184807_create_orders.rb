class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :email
      t.string :status
      t.string :zipcode
      t.string :expdate
      t.string :ccv
      t.string :ccnumber
      t.string :total

      t.timestamps
    end
  end
end
