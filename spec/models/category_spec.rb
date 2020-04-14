require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    Category.new(name: 'romance', priority: 5)
  end

  it 'Category should be valid' do
    expect(subject).to be_valid
  end

  it 'Category name should present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Category priorityshould be present' do
    subject.priority = nil
    expect(subject).to_not be_valid
  end
end
