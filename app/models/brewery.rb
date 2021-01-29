class Brewery < ApplicationRecord
    has_many :favorites_breweries, dependent: :delete_all
    has_many :favorites, through: :favorites_breweries
end
