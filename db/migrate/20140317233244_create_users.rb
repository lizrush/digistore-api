class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :zipcode
      t.string :expdate
      t.string :ccv
      t.string :ccnumber
      t.string :admin

      t.timestamps
    end
  end
end
