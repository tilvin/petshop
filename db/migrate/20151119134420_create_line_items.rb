class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :stuff_id
      t.integer :weight_id
      t.integer :quantity, :default => 1
      t.integer :cart_id
      t.string :color

      t.timestamps null: false
    end
  end
end
