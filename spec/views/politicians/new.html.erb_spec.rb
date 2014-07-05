require 'rails_helper'

RSpec.describe "politicians/new", :type => :view do
  before(:each) do
    assign(:politician, Politician.new())
  end

  it "renders new politician form" do
    render

    assert_select "form[action=?][method=?]", politicians_path, "post" do
    end
  end
end
