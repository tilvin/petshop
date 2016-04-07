class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.text :description
      t.string :annotation
      t.integer :value
      t.string :picture
      t.date :start
      t.date :end
      t.string :name
      t.integer :brand


      t.timestamps null: false
    end
  end
end
