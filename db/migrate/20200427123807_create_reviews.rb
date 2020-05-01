class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :beer_name, null: false
      t.text :text, null: false
      t.text :image, null: false
      t.float :rate, null: false
      t.float :abv
      t.float :ibu
      t.text :ec_goodbeer
      t.text :ec_amazon
      t.text :ec_rakuten
      t.string :beer_spot_name
      t.string :beer_spot_city
      t.text  :beer_spot_url
      t.references :reviewer, foreign_key: true
      t.references :brewery, foreign_key: true
      t.references :style, foreign_key: true
      t.timestamps
    end
  end
end
