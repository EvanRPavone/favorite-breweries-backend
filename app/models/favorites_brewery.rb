class FavoritesBrewery < ApplicationRecord
  belongs_to :favorite
  belongs_to :brewery
end
