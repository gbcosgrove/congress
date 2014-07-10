require 'rails_helper'

RSpec.describe "search_parameters/new", :type => :view do
  before(:each) do
    assign(:search_parameter, SearchParameter.new())
  end

  it "renders new search_parameter form" do
    render

    assert_select "form[action=?][method=?]", search_parameters_path, "post" do
    end
  end
end
