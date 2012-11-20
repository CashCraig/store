class Order < ActiveRecord::Base
  has_many :line_items
  belongs_to :customer
	belongs_to :status
  validates :customer, :status, :presence => true
end
