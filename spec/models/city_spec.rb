require 'rails_helper'
require 'faker'

RSpec.describe City, type: :model do

    before(:each) do
      @city = City.create(name: Faker::Address.city, postal_code: Faker::Address.zip)
    end

context 'validates' do

    it '#presence of name' do
      expect(@city).to validate_presence_of(:name)
    end

    it '#presence of zip' do
      expect(@city).to validate_presence_of(:postal_code)
    end

  end



end
