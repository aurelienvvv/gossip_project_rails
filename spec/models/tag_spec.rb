require 'rails_helper'

RSpec.describe Tag, type: :model do
 before(:each) do
    @tag = Tag.create(title: Faker::DragonBall.character)
  end


  context 'validates' do
    it '#presence of title' do
      expect(@tag).to validate_presence_of(:title)
    end

     it '#uniqueness of title' do
      expect(@tag).to validate_uniqueness_of(:title)
    end



  end
end
