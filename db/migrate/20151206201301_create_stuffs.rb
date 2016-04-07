class CreateStuffs < ActiveRecord::Migration
  def change
    create_table :stuffs do |t|
      t.integer :pet_id
      t.string :name
      t.string :size
      t.text :annotation
      t.text :description
      t.integer :brand_id
      t.integer :discount_id
      t.integer :sale, default: 0
      t.float :price, default: 0
      t.integer :group
      t.string :picture
      t.text :color

      t.timestamps null: false
    end
  end
end
