class CreateBreweries < ActiveRecord::Migration[5.2]
  def change
    create_table :breweries do |t|
      t.string :brewery_name
      t.string :brewery_country
      t.string :brewery_city     
      t.timestamps
    end
  end
end
