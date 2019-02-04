require 'rails_helper'

RSpec.describe PrivateMessage, type: :model do
 before(:each) do
    @private_message = PrivateMessage.create(content: Faker::Hipster.sentence(3),sender_id:rand(1..10) ,recipient_id:rand(1..10))
  end


  context 'validates' do
    it '#presence of content' do
      expect(@private_message).to validate_presence_of(:content)
    end

     it '#presence of sender_id' do
      expect(@private_message).to validate_presence_of(:sender_id)
    end

    it '#presence of recipient_id' do
      expect(@private_message).to validate_presence_of(:recipient_id)
    end


  end
end
