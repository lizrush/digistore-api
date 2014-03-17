class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart
      t.string :customer_name
      t.string :email
      t.string :status
      t.string :zipcode
      t.string :expdate
      t.string :ccv
      t.string :ccnumber

      t.timestamps
    end
  end
end
