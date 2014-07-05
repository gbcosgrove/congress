require 'rails_helper'

RSpec.describe "politicians/index", :type => :view do
  before(:each) do
    assign(:politicians, [
      Politician.create!(),
      Politician.create!()
    ])
  end

  it "renders a list of politicians" do
    render
  end
end
