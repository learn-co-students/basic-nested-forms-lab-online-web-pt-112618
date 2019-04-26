class RecipesController < ApplicationController
  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes = Recipe.all
  end

  def new
    @recipe = Recipe.new
  end

  def create
    recipe = Recipe.create(recipe_params)
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe = Recipe.update(recipe_params)
    @recipe.save
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,ingredients_attributes: [:name, :quantity])
  end
end
