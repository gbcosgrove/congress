require 'rails_helper'

RSpec.describe "politicians/show", :type => :view do
  before(:each) do
    @politician = assign(:politician, Politician.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
