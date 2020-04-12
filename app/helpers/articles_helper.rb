module ArticlesHelper

  def love_or_unlove_btn(article)
    love = Vote.find_by(article:article, user:current_user,status:0)
  end

  def loved_article?(article)
    !!love_or_unlove_btn(article)
  end

  def image_url(image)
    widht_height = ["500x700","500x600","500x500","500x800"]
    rand = Random.rand(4)
    url = "https://source.unsplash.com/#{image.image_url}/#{widht_height[rand]}"
  end
end
