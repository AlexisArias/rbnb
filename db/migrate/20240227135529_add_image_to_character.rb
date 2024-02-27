class AddImageToCharacter < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :image, :string
  end
end
