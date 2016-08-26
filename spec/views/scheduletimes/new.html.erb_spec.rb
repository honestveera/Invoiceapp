require 'rails_helper'

RSpec.describe "scheduletimes/new", type: :view do
  before(:each) do
    assign(:scheduletime, Scheduletime.new())
  end

  it "renders new scheduletime form" do
    render

    assert_select "form[action=?][method=?]", scheduletimes_path, "post" do
    end
  end
end
