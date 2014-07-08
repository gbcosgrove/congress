require 'rails_helper'

RSpec.describe "Maps", :type => :request do
  describe "GET /maps" do
    it "works! (now write some real specs)" do
      get maps_path
      expect(response.status).to be(200)
    end
  end
end
