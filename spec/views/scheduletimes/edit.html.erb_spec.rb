require 'rails_helper'

RSpec.describe "scheduletimes/edit", type: :view do
  before(:each) do
    @scheduletime = assign(:scheduletime, Scheduletime.create!())
  end

  it "renders the edit scheduletime form" do
    render

    assert_select "form[action=?][method=?]", scheduletime_path(@scheduletime), "post" do
    end
  end
end
