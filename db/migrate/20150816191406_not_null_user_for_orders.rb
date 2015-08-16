class NotNullUserForOrders < ActiveRecord::Migration
  def change
    change_column_null :orders, :user_id, false
  end
end
