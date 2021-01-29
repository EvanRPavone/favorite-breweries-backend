class BreweriesController < ApplicationController
    def index
        breweries = Brewery.all
        render json: BrewerySerializer.new(breweries)
    end

    def show
        breweries = Favorite.find_by(id: params[:favorite_name])
        render json: BrewerySerializer.new(breweries)
    end

    def create
        brewery = Brewery.new(brewery_params)
        favorites = params[:favorites].map { |favorite| Favorite.find_or_create_by(name: favorite) }
        brewery.favorites << favorites
        brewery.save
        render json: BrewerySerializer.new(brewery)
    end

    def destroy
        brewery = Brewery.find(id: params[:favorite_name])
        brewery.destroy
    end

    private

    def brewery_params
        params.require(:brewery).permit(:id, :name, :city, :state)
    end
end
