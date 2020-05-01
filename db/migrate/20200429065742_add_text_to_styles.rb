class AddTextToStyles < ActiveRecord::Migration[5.2]
  def change
    add_column :styles, :text, :text
  end
end
