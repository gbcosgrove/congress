require 'rails_helper'

RSpec.describe "contractors/new", :type => :view do
  before(:each) do
    assign(:contractor, Contractor.new())
  end

  it "renders new contractor form" do
    render

    assert_select "form[action=?][method=?]", contractors_path, "post" do
    end
  end
end
