require 'rails_helper'

RSpec.describe "contributions/show", :type => :view do
  before(:each) do
    @contribution = assign(:contribution, Contribution.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
