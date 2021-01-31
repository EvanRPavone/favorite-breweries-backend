class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :beer, :breweries
end
