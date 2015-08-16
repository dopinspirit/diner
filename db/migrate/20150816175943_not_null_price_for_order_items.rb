class NotNullPriceForOrderItems < ActiveRecord::Migration
  def change
    change_column_null :order_items, :price, false
  end
end
