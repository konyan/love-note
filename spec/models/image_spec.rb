require 'rails_helper'

RSpec.describe Image, type: :model do
  subject do
    Image.new(name: 'Rain', image_url: 'U4U2Nd1PoTQ')
  end

  it 'Image should be valid' do
    expect(subject).to be_valid
  end

  it 'Image name should present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Image url should be present' do
    subject.image_url = nil
    expect(subject).to_not be_valid
  end
end
