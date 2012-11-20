class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :author
      t.decimal :price
      t.decimal :sale_price
      t.integer :stock_quantity
      t.integer :order_quantity
      t.integer :category_id
      t.integer :status
      t.string :image

      t.timestamps
    end
  end
end
