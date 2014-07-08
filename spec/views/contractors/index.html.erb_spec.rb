require 'rails_helper'

RSpec.describe "contractors/index", :type => :view do
  before(:each) do
    assign(:contractors, [
      Contractor.create!(),
      Contractor.create!()
    ])
  end

  it "renders a list of contractors" do
    render
  end
end
