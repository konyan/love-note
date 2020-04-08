class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit,:update,:show, :destroy]

  def index
    @articles = Article.all
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def show
  end

  def destroy
    @article.destroy
    flash[:danger] = 'Article was successfully deleted.'
    redirect_to articles_path
  end

  private

    def set_article
      # debugger
      @article = Article.find(params[:id])
    end
end
