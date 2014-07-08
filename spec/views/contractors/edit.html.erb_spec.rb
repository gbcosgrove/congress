require 'rails_helper'

RSpec.describe "contractors/edit", :type => :view do
  before(:each) do
    @contractor = assign(:contractor, Contractor.create!())
  end

  it "renders the edit contractor form" do
    render

    assert_select "form[action=?][method=?]", contractor_path(@contractor), "post" do
    end
  end
end
