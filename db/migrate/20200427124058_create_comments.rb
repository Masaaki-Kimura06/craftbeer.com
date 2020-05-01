class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text, null: false
      t.float :rate, null: false
      t.text :text, null: false
      t.string :beer_spot_name
      t.string :beer_spot_city
      t.text  :beer_spot_url
      t.references :review, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
