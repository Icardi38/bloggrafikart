class CategoriesController < ApplicationController

  before_action :set_category, only: [:edit, :update, :show, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to categories_path, flash: {success:  "Catégorie créée avec succés"}
  end

  def edit
  end

  def update
    @category.update(category_params)
    redirect_to categories_path, flash: {success:  "Catégorie modifiée avec succés"}
  end

  def show
  end

  def destroy
    @category.destroy
    redirect_to categories_path, flash: {success:  "Catégorie supprimée avec succés"}
  end

  private

  def category_params
    params.require(:category).permit(:title, :content)
  end

  def set_category
    @category = Category.find(params[:id])
  end

end
