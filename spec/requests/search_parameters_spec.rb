require 'rails_helper'

RSpec.describe "SearchParameters", :type => :request do
  describe "GET /search_parameters" do
    it "works! (now write some real specs)" do
      get search_parameters_path
      expect(response.status).to be(200)
    end
  end
end
