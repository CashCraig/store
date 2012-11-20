class Province < ActiveRecord::Base
  has_many :customers
  validates :name, :gst, :pst, :hst, :presence => true
  validates :name, :uniqueness => true
  validates :gst, :pst, :hst, :numericality => {:greater_than_or_equal_to => 0}
end
