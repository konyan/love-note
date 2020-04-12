class ArticlesController < ApplicationController

  before_action :set_article, only: [:edit,:update,:show, :destroy]
  helper_method :preview

  def index
    @articles = Article.order(vote_count: :desc,updated_at: :desc)
  end

  def new
    @images = Image.all
    @fonts = Font.all
    @categories = Category.all
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    @article.user = current_user
    if @article.save
      flash[:success] = "Artist was successfully created"
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def preview
    @preview_article = Article.new()
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

    def article_params
      params.require(:article).permit(:title,:content,:image_id,:user_id,:category_id,:font_id,:is_private)
    end
end
