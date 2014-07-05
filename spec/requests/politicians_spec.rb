require 'rails_helper'

RSpec.describe "Politicians", :type => :request do
  describe "GET /politicians" do
    it "works! (now write some real specs)" do
      get politicians_path
      expect(response.status).to be(200)
    end
  end
end
