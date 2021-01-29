class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :breweries
end
