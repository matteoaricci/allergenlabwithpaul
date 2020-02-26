class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new

    end

    private
    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end