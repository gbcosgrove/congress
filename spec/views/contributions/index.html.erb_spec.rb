require 'rails_helper'

RSpec.describe "contributions/index", :type => :view do
  before(:each) do
    assign(:contributions, [
      Contribution.create!(),
      Contribution.create!()
    ])
  end

  it "renders a list of contributions" do
    render
  end
end
