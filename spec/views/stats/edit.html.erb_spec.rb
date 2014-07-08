require 'rails_helper'

RSpec.describe "stats/edit", :type => :view do
  before(:each) do
    @stat = assign(:stat, Stat.create!())
  end

  it "renders the edit stat form" do
    render

    assert_select "form[action=?][method=?]", stat_path(@stat), "post" do
    end
  end
end
