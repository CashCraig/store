class Status < ActiveRecord::Base
  has_many :orders
	has_many :products
  validates :name, :presence => true, :uniqueness => true
end
