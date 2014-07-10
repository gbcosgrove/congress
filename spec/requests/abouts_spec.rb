require 'rails_helper'

RSpec.describe "Abouts", :type => :request do
  describe "GET /abouts" do
    it "works! (now write some real specs)" do
      get abouts_path
      expect(response.status).to be(200)
    end
  end
end
