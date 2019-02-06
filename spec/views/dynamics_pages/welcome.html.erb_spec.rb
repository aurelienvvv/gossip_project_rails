require 'rails_helper'

RSpec.describe "dynamics_pages/welcome.html.erb", type: :view do
  context "Welcome page" do
    it "display welcome" do
      render
      expect(rendered).to have_content "BIENVENUE"
    end

    it "display Créer" do
      render
      expect(rendered).to have_content "Créer"
end
end
end