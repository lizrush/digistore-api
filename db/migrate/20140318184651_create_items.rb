class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :quantity
      t.string  :currentprice
      t.string  :product_avatar
      t.string  :product_name
      t.integer :product_id
      t.integer :order_id

      t.timestamps
    end
  end
end
