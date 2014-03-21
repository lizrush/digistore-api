class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.text :description
      t.string :image
      t.string :avatar

      t.timestamps
    end
  end
end
