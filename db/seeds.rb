# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'net/http'


def image_url

  image_url = ['love', 'people','lonely','rain','heart']
  ran = Random.rand(5)
  img = image_url[ran]
  url = ""
  if ran >= 4
    url = 'https://loremflickr.com/json/g/500/700/'+img
  elsif ran >= 2
   url = 'https://loremflickr.com/json/g/500/800/'+img
  else
   url = 'https://loremflickr.com/json/g/500/600/'+img
  end
  uri = URI.parse(url)
  puts uri

  response = Net::HTTP.get_response(uri)

  JSON.parse(response.body)
end

10.times do
  user = User.create(
      name: Faker::Name.unique.first_name
    )
  imgResponse = image_url;
  image = Image.create(
    name: imgResponse["owner"],
    image_url:imgResponse["file"]
  )

  category = Category.create(name: Faker::Creature::Animal.name, priority: 5)
  # Category.create(name: "Eros", priority: 4)
  # Category.create(name: "Philia", priority: 3)
  # Category.create(name: "Philautia", priority: 3)
  # Category.create(name: "Storge", priority: 5)
  # Category.create(name: "Pragma", priority: 1)
  # Category.create(name: "Ludus", priority: 2)
  # Category.create(name: "Lonely", priority: 4)
  # Category.create(name: "Depression", priority: 4)
  # Category.create(name: "Stree", priority: 5)
  # Category.create(name: "Broken", priority: 3)


  font = Font.create(name:Faker::Lorem.word, origin_name: Faker::Lorem.word)
  # Font.create(name:"Economica", origin_name: "Economica,sans-serif")
  # Font.create(name:"Marck Script", origin_name: "Marck Script, cursive")
  # Font.create(name:"Montez", origin_name: "Montez,cursive")
  # Font.create(name:"Roboto Slab", origin_name: "Roboto Slab,serif")
  # Font.create(name:"Satisfy", origin_name: "Satisfy,cursive")


  # t.string "title"
  #   t.text "content"
  #   t.string "image_id"
  #   t.integer "user_id"
  #   t.integer "category_id"
  #   t.integer "font_id"
  #   t.boolean "is_private"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  article =Article.create(title: Faker::Lorem.question(word_count: 3),
                content: Faker::Lorem.paragraph(sentence_count: 3),
                image_id: image.id, user_id: user.id,
                category_id:category.id,font_id: font.id,
                is_private:false)


                # article =Article.create(title: Faker::Lorem.question(word_count: 3),
                # content: Faker::Lorem.paragraph(sentence_count: 3),
                # image_id: 1, user_id: 1,
                # category_id:1,font_id: 1,
                # is_private:0)
  puts article.title
end
