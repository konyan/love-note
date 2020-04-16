require 'rails_helper'

RSpec.describe Font, type: :model do
  subject do
    Font.new(name: 'notosan', origin_name: 'Nato San')
  end

  it 'Font should be valid' do
    expect(subject).to be_valid
  end

  it 'Font name should present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Font orgin name should be present' do
    subject.origin_name = nil
    expect(subject).to_not be_valid
  end
end
