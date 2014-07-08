require 'rails_helper'

RSpec.describe "stats/new", :type => :view do
  before(:each) do
    assign(:stat, Stat.new())
  end

  it "renders new stat form" do
    render

    assert_select "form[action=?][method=?]", stats_path, "post" do
    end
  end
end
