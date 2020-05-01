class AddImageToBreweries < ActiveRecord::Migration[5.2]
  def change
    add_column :breweries, :image, :text
  end
end
