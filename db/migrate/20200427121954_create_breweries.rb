class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :brewery_name, null: false
      t.string :brewery_country, null: false
      t.string :brewery_city, null: false      
      t.timestamps
    end
  end
end
