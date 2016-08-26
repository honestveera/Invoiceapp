require 'rails_helper'

RSpec.describe "skillsets/new", type: :view do
  before(:each) do
    assign(:skillset, Skillset.new(
      :skills => "MyString"
    ))
  end

  it "renders new skillset form" do
    render

    assert_select "form[action=?][method=?]", skillsets_path, "post" do

      assert_select "input#skillset_skills[name=?]", "skillset[skills]"
    end
  end
end
