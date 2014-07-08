require 'rails_helper'

RSpec.describe "Contractors", :type => :request do
  describe "GET /contractors" do
    it "works! (now write some real specs)" do
      get contractors_path
      expect(response.status).to be(200)
    end
  end
end
