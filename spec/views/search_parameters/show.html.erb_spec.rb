require 'rails_helper'

RSpec.describe "search_parameters/show", :type => :view do
  before(:each) do
    @search_parameter = assign(:search_parameter, SearchParameter.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
