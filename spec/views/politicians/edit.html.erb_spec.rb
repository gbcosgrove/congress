require 'rails_helper'

RSpec.describe "politicians/edit", :type => :view do
  before(:each) do
    @politician = assign(:politician, Politician.create!())
  end

  it "renders the edit politician form" do
    render

    assert_select "form[action=?][method=?]", politician_path(@politician), "post" do
    end
  end
end
