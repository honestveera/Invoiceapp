require 'rails_helper'

RSpec.describe "calenders/index", type: :view do
  before(:each) do
    assign(:calenders, [
      Calender.create!(),
      Calender.create!()
    ])
  end

  it "renders a list of calenders" do
    render
  end
end
