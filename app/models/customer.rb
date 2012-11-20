class Customer < ActiveRecord::Base
  has_many :orders
  belongs_to :province
  validates :name, :address, :city, :postal_code, :phone, :email, :province, :presence => true
end
