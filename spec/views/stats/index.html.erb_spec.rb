require 'rails_helper'

RSpec.describe "stats/index", :type => :view do
  before(:each) do
    assign(:stats, [
      Stat.create!(),
      Stat.create!()
    ])
  end

  it "renders a list of stats" do
    render
  end
end
