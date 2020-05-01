class AddTextToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :text, :text
  end
end
