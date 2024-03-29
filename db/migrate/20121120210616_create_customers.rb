class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :email
      t.string :phone
      t.integer :province_id

      t.timestamps
    end
  end
end
