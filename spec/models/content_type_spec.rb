require 'rails_helper'

RSpec.describe ContentType, type: :model do
  it 'maps Medium' do
    kind = ContentType.kind('www.medium.com/something')
    expect(kind).to eql 'medium'
  end

  it 'maps Soundcloud' do
    kind = ContentType.kind('www.soundcloud.com/something')
    expect(kind).to eql 'soundcloud'
  end

  it 'maps YouTube' do
    kind = ContentType.kind('www.youtube.com/something')
    expect(kind).to eql 'youtube'
  end
end
