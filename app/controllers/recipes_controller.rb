class RecipesController < ApplicationController
    
    def index
        @recipes = Recipe.all
    end

    def show
        @recipe = Recipe.find(params[:id])
        #@quantity = RecIng.find_by(recipe_id: @recipe.id, ingredient_id: ri.id).ing_quantity
    end

    def new
        @recipe = Recipe.new
        @recipe.rec_ings.build
    end

    def create
        byebug
        @recipe = Recipe.create(recipe_params)
        
        redirect_to recipe_path(@recipe)
    end

    private

    def recipe_params
        params.require(:recipe).permit(:name, :user_id)
    end
end
