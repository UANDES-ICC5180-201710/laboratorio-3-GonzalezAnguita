require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      :title => "MyString",
      :code => "MyString",
      :quote => 1,
      :person => nil
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_quote[name=?]", "course[quote]"

      assert_select "input#course_person_id[name=?]", "course[person_id]"
    end
  end
end
