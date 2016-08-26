require 'rails_helper'

RSpec.describe "skillsets/index", type: :view do
  before(:each) do
    assign(:skillsets, [
      Skillset.create!(
        :skills => "Skills"
      ),
      Skillset.create!(
        :skills => "Skills"
      )
    ])
  end

  it "renders a list of skillsets" do
    render
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
  end
end
