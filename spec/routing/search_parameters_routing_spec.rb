require "rails_helper"

RSpec.describe SearchParametersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/search_parameters").to route_to("search_parameters#index")
    end

    it "routes to #new" do
      expect(:get => "/search_parameters/new").to route_to("search_parameters#new")
    end

    it "routes to #show" do
      expect(:get => "/search_parameters/1").to route_to("search_parameters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/search_parameters/1/edit").to route_to("search_parameters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/search_parameters").to route_to("search_parameters#create")
    end

    it "routes to #update" do
      expect(:put => "/search_parameters/1").to route_to("search_parameters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/search_parameters/1").to route_to("search_parameters#destroy", :id => "1")
    end

  end
end
