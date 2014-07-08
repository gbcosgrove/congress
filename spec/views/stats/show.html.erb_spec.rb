require 'rails_helper'

RSpec.describe "stats/show", :type => :view do
  before(:each) do
    @stat = assign(:stat, Stat.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
