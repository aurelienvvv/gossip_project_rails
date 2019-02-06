require 'rails_helper'

RSpec.describe "gossips/create.html.erb", type: :view do


  context 'it show tags' do
    it "display Write your gossip here" do
    render

    expect(rendered).to have_content "Write your gossip here :"


end