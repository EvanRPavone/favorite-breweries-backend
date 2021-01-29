class CreateFavoritesBreweries < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites_breweries do |t|
      t.references :favorite, null: false, foreign_key: true
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
