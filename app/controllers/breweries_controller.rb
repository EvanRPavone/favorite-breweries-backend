class BreweriesController < ApplicationController
    def index
        breweries = Brewery.all
        render json: BrewerySerializer.new(breweries)
    end

    def show
        breweries = Favorite.find_by(beer: params[:favorite_beer]).breweries
        render json: BrewerySerializer.new(breweries.sample)
    end

    def create
        brewery = Brewery.new(brewery_params)
        favorites = params[:favorites].map { |favorite| Favorite.find_or_create_by(beer: favorite) }
        brewery.favorites << favorites
        brewery.save
        render json: BrewerySerializer.new(brewery)
    end

    def destroy
        breweries = Brewery.all
        if breweries.destroy_all
            render json: { message: 'Breweries deleted' }
        else
            render json: { errors: breweries.errors.full_messages }
        end
    end

    private

    def brewery_params
        params.require(:brewery).permit(:id, :name, :city, :state)
    end
end
