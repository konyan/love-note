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
  img = image_url[Random.rand(5)]
  uri = URI.parse('https://loremflickr.com/json/g/600/800/'+img)
  puts uri

  response = Net::HTTP.get_response(uri)

  JSON.parse(response.body)
end

10.times do
  user = User.create(
      name: Faker::Name.unique.first_name
    )
  imgResponse = image_url;
  puts imgResponse["owner"]

  image = Image.create(
    name: imgResponse["owner"],
    image_url:imgResponse["file"]
  )

  Category.create(name: "Agape", priority: 5)
  Category.create(name: "Eros", priority: 4)
  Category.create(name: "Philia", priority: 3)
  Category.create(name: "Philautia", priority: 3)
  Category.create(name: "Storge", priority: 5)
  Category.create(name: "Pragma", priority: 1)
  Category.create(name: "Ludus", priority: 2)
  Category.create(name: "Lonely", priority: 4)
  Category.create(name: "Depression", priority: 4)
  Category.create(name: "Stree", priority: 5)
  Category.create(name: "Broken", priority: 3)


  Font.create(name:"Lobster Two", origin_name: "Lobster Two,cursive")
  Font.create(name:"Economica", origin_name: "Economica,sans-serif")
  Font.create(name:"Marck Script", origin_name: "Marck Script, cursive")
  Font.create(name:"Montez", origin_name: "Montez,cursive")
  Font.create(name:"Roboto Slab", origin_name: "Roboto Slab,serif")
  Font.create(name:"Satisfy", origin_name: "Satisfy,cursive")

end
