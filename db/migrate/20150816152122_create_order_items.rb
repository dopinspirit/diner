class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.references :item, index: true, foreign_key: true
      t.float :price

      t.timestamps null: false
    end
  end
end
