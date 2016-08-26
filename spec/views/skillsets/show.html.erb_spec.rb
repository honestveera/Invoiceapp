require 'rails_helper'

RSpec.describe "skillsets/show", type: :view do
  before(:each) do
    @skillset = assign(:skillset, Skillset.create!(
      :skills => "Skills"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Skills/)
  end
end
