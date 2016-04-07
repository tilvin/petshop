class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :size
      t.integer :stuff_id
      t.integer :price

      t.timestamps null: false
    end
  end
end
