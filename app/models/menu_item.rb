class MenuItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :menu

  validates_presence_of :item
  validates_presence_of :menu
  validates_presence_of :price
end
