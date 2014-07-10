require 'rails_helper'

RSpec.describe "contributions/new", :type => :view do
  before(:each) do
    assign(:contribution, Contribution.new())
  end

  it "renders new contribution form" do
    render

    assert_select "form[action=?][method=?]", contributions_path, "post" do
    end
  end
end
