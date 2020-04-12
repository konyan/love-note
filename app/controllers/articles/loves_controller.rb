class Articles::LovesController < ApplicationController

  def create
    if current_user
      article = Article.find(params[:article_id])
      vote = Vote.find_by(user:current_user, article:article)
      if vote
        count = article.vote_count -1
        article.update(vote_count:count)
        vote.update(status: 0)
      else
        count = article.vote_count + 1
        puts count
        article.update(vote_count:count)
        vote = current_user.votes.create(article_id: article.id)
      end
      redirect_to request.referrer
    else
      redirect_to login_path
    end
  end

  def destroy
    vote = Vote.find(params[:id])
    #reduce vote_count
    article = Article.find(vote.article_id)
    count = article.vote_count - 1
    article.update(vote_count:count)
    # update vote
    vote.update(status: 1)
    redirect_to request.referrer
  end
end