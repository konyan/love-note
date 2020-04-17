require 'rails_helper'

RSpec.describe Article, type: :model do
  font = Font.create(name: Faker::Name.unique.first_name, origin_name: 'Nato San')
  category = Category.create(name: Faker::Name.unique.first_name, priority: 5)
  image = Image.create(name: Faker::Name.unique.first_name, image_url: 'U4U2Nd1PoTQ')
  user = User.create(name: Faker::Name.unique.first_name)

  subject do
    Article.new(title: 'Hello World',
                content: "Instead of finding the text Name can't be blank on the page",
                image_id: image.id,
                user_id: user.id,
                category_id: category.id,
                font_id: font.id,
                is_private: false)
  end

  it 'Article should be valid' do
    expect(subject).to be_valid
  end

  it 'Article title should present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Article content should be present' do
    subject.content = nil
    expect(subject).to_not be_valid
  end
end
