require 'rails_helper'

RSpec.describe "search_parameters/index", :type => :view do
  before(:each) do
    assign(:search_parameters, [
      SearchParameter.create!(),
      SearchParameter.create!()
    ])
  end

  it "renders a list of search_parameters" do
    render
  end
end
