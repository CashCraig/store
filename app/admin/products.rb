ActiveAdmin.register Product do 
  index do
		column :image do |product|
			image_tag(product.image, :width => '100px')
		end	
    column :name
    column :description do |product|
			truncate(product.description, :length => 150)
		end
		column :price
		column :sale_price
		column :stock_quantity
		column :order_quantity
		column :status
    column :created_at
		column :updated_at

    default_actions
  end
end
