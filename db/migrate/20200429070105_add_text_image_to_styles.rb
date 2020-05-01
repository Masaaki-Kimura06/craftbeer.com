class AddTextImageToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :image, :text
  end
end
