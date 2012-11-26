ActiveAdmin.register Post, :as => "News" do
    index do
		column :image do |product|
			image_tag(product.image, :width => '50px')
		end	
    column :content
    column :created_at
		column :updated_at

    default_actions
  end
end
