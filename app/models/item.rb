class Item < ActiveRecord::Base
  has_many :menu_items
  has_many :menus, through: :menu_items

  mount_uploader :image, ImageUploader
end
