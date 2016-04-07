class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :picture
      t.text :description
      t.string :country
      t.timestamps null: false
    end
  end
end
