class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles.includes(:category, :image).order(vote_count: :desc, updated_at: :desc)
  end

end