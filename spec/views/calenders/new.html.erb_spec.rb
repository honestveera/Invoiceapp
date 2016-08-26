require 'rails_helper'

RSpec.describe "calenders/new", type: :view do
  before(:each) do
    assign(:calender, Calender.new())
  end

  it "renders new calender form" do
    render

    assert_select "form[action=?][method=?]", calenders_path, "post" do
    end
  end
end
