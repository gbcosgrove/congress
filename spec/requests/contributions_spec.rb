require 'rails_helper'

RSpec.describe "Contributions", :type => :request do
  describe "GET /contributions" do
    it "works! (now write some real specs)" do
      get contributions_path
      expect(response.status).to be(200)
    end
  end
end
