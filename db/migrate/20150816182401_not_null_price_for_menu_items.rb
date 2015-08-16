class NotNullPriceForMenuItems < ActiveRecord::Migration
  def change
    change_column_null :menu_items, :price, false
  end
end
