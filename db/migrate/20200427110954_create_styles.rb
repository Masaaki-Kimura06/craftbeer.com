class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.string :beer_style, null: false
      t.timestamps
    end
  end
end
