class SearchController < ApplicationController
		def search
		
		end
		
		def search_results
			@keyword = params[:keyword]
		
			@products = Product.where("name LIKE ?","%#{@keyword}%")
			
			if @products.empty?
				flash[:notice] = "No product found."
				redirect_to search_path
			end
		end
end
