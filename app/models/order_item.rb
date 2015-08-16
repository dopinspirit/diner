class OrderItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :order

  validates_presence_of :price
  validates_presence_of :item
  validates_presence_of :order

end
