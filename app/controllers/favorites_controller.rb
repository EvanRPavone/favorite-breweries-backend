class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: FavoriteSerializer.new(favorites)
    end

    def destroy
        favorites = Favorite.all
        if favorites.destroy_all
            render json: { message: 'Favorites deleted' }
        else
            render json: { errors: favorites.errors.full_messages }
        end
    end
end
