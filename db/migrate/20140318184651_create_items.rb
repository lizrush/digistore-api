class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product_id
      t.string :quantity
      t.string :currentprice
      t.string :product_avatar
      t.string :product_name

      t.timestamps
    end
  end
end
