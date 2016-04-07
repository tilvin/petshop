class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :size
      t.text :groups
      t.string :picture

      t.timestamps null: false
    end
  end
end
