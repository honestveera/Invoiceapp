require 'rails_helper'

RSpec.describe "calenders/show", type: :view do
  before(:each) do
    @calender = assign(:calender, Calender.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
