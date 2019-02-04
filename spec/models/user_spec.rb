require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do

    before(:each) do
      first = Faker::Name.first_name
      last = Faker::Name.last_name
      @user = User.create(first_name: first  ,last_name: last ,email:"#{first}.#{last}@gmail.com" ,age: rand(15..25) ,city_id: rand(1..10)) 
    end

context 'validates' do

    it '#presence of first_name' do
      expect(@user).to validate_presence_of(:first_name)
    end

    it '#presence of last_name' do
      expect(@user).to validate_presence_of(:last_name)
    end

  end



end
