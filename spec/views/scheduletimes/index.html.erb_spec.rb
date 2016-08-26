require 'rails_helper'

RSpec.describe "scheduletimes/index", type: :view do
  before(:each) do
    assign(:scheduletimes, [
      Scheduletime.create!(),
      Scheduletime.create!()
    ])
  end

  it "renders a list of scheduletimes" do
    render
  end
end
