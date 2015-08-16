class NotNullForMenuItemsAndOrderItemsRelations < ActiveRecord::Migration
  def change
    change_column_null :order_items, :item_id, false
    change_column_null :order_items, :order_id, false

    change_column_null :menu_items, :item_id, false
    change_column_null :menu_items, :menu_id, false
  end
end
