class ApplicationController < ActionController::Base
  protect_from_forgery
	
	before_filter :load_posts
	
	def load_posts
		@posts = Post.order('created_at DESC').limit(8)  
	end
end
