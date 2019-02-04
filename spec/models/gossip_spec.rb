require 'rails_helper'

RSpec.describe Gossip, type: :model do
  before(:each) do
    @gossip = Gossip.create(title: Faker::GreekPhilosophers.name ,content:Faker::GreekPhilosophers.quote ,user_id: rand(60..80))
  end


  context 'validates' do
    it '#presence of title' do
      expect(@gossip).to validate_presence_of(:title)
    end

     it '#presence of content' do
      expect(@gossip).to validate_presence_of(:content)
    end


  end
end
