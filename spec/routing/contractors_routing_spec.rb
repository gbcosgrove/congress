require "rails_helper"

RSpec.describe ContractorsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contractors").to route_to("contractors#index")
    end

    it "routes to #new" do
      expect(:get => "/contractors/new").to route_to("contractors#new")
    end

    it "routes to #show" do
      expect(:get => "/contractors/1").to route_to("contractors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contractors/1/edit").to route_to("contractors#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contractors").to route_to("contractors#create")
    end

    it "routes to #update" do
      expect(:put => "/contractors/1").to route_to("contractors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contractors/1").to route_to("contractors#destroy", :id => "1")
    end

  end
end
