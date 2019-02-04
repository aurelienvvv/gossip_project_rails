require 'rails_helper'

RSpec.describe GossipTag, type: :model do
  before(:each) do
    @gossip_tag = GossipTag.create(gossip_id: 1,tag_id: 1)
  end


  context 'validates' do
    it '#presence of gossip id' do
      expect(@gossip_tag).to validate_presence_of(:gossip_id)
    end

     it '#presence of tag id' do
      expect(@gossip_tag).to validate_presence_of(:tag_id)
    end


  end
end
