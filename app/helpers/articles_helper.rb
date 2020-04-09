module ArticlesHelper

  def love_or_unlove_btn(article)
    love = Vote.find_by(article:article, user:current_user,status:0)
  end

  def loved_article?(article)
    !!love_or_unlove_btn(article)
  end
end
