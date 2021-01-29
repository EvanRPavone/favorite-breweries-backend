class BrewerySerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :city, :state, :favorites
end
