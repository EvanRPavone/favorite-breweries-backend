class Favorite < ApplicationRecord
    has_many :favorites_breweries, dependent: :delete_all
    has_many :breweries, through: :favorites_breweries
end
