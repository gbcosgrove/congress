require 'rails_helper'

RSpec.describe "contributions/edit", :type => :view do
  before(:each) do
    @contribution = assign(:contribution, Contribution.create!())
  end

  it "renders the edit contribution form" do
    render

    assert_select "form[action=?][method=?]", contribution_path(@contribution), "post" do
    end
  end
end
