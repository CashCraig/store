class LineItem < ActiveRecord::Base
  belongs_to :order
	belongs_to :product
	validates :order, :product, :presence => true
  validates :quantity, :numericality => {:greater_than => 0 }
end
