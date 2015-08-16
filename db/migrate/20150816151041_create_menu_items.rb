class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.float :price
      t.belongs_to :item, index: true, foreign_key: true
      t.belongs_to :menu, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
