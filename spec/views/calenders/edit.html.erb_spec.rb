require 'rails_helper'

RSpec.describe "calenders/edit", type: :view do
  before(:each) do
    @calender = assign(:calender, Calender.create!())
  end

  it "renders the edit calender form" do
    render

    assert_select "form[action=?][method=?]", calender_path(@calender), "post" do
    end
  end
end
