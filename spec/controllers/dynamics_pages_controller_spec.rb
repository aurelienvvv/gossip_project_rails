require 'rails_helper'

RSpec.describe DynamicsPagesController, type: :controller do

  describe "GET #welcome" do
    it "returns http success" do
      get :welcome
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #gossip" do
    it "returns http success" do
      get :gossip
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #user" do
    it "returns http success" do
      get :user
      expect(response).to have_http_status(:success)
    end
  end

end
