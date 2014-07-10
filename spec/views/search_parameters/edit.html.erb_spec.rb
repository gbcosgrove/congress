require 'rails_helper'

RSpec.describe "search_parameters/edit", :type => :view do
  before(:each) do
    @search_parameter = assign(:search_parameter, SearchParameter.create!())
  end

  it "renders the edit search_parameter form" do
    render

    assert_select "form[action=?][method=?]", search_parameter_path(@search_parameter), "post" do
    end
  end
end
