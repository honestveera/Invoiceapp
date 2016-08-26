require 'rails_helper'

RSpec.describe "scheduletimes/show", type: :view do
  before(:each) do
    @scheduletime = assign(:scheduletime, Scheduletime.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
