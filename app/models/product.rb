class Product < ActiveRecord::Base
  has_many :line_items
  belongs_to :category
	belongs_to :status
  validates :name, :description, :author, :price, :category, :presence => true
  validates :name, :uniqueness => true
  validates :price, :sale_price, :stock_quantity, :order_quantity, :numericality => {:greater_than_or_equal_to => 0}
end
