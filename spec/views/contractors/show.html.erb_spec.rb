require 'rails_helper'

RSpec.describe "contractors/show", :type => :view do
  before(:each) do
    @contractor = assign(:contractor, Contractor.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
