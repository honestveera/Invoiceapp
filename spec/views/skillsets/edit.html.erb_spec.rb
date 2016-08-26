require 'rails_helper'

RSpec.describe "skillsets/edit", type: :view do
  before(:each) do
    @skillset = assign(:skillset, Skillset.create!(
      :skills => "MyString"
    ))
  end

  it "renders the edit skillset form" do
    render

    assert_select "form[action=?][method=?]", skillset_path(@skillset), "post" do

      assert_select "input#skillset_skills[name=?]", "skillset[skills]"
    end
  end
end
