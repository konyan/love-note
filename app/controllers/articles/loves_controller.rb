class Articles::LovesController < ApplicationController

  def create
    if current_user
      article = Article.find(params[:article_id])
      vote = Vote.find_by(user:current_user, article:article)
      if vote
        vote.update(status: 0)
      else
        vote = current_user.votes.create(article_id: article.id)
      end
      redirect_to request.referrer
    else
      redirect_to login_path
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    vote.update(status: 1)
    redirect_to request.referrer
  end
end