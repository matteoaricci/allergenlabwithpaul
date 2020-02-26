class IngredientsController < ApplicationController
    # before_action find, only: [:show, ]

    def index
        @ingredients = Ingredient.all
    end

    def show
        @ingredient = Ingredient.find(params[:id])
    end

    def new
        @ingredient = Ingredient.new
    end

    def create
        @ingredient = Ingredient.create(ingredient_params)
        redirect_to ingredient_path(@ingredient)
    end

    def destroy
        @ingredient = Ingredient.find(params[:id])
        @ingredient.destroy
        redirect_to ingredients_path
    end

    private
    def find
        @ingredient = Ingredient.find(ingredient_params)
    end

    def ingredient_params
        params.require(:ingredient).permit(:name)
    end
end
