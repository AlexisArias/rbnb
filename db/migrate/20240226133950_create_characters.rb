class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
