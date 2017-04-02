require 'rails_helper'

RSpec.describe "courses/new", type: :view do
  before(:each) do
    assign(:course, Course.new(
      :title => "MyString",
      :code => "MyString",
      :quote => 1,
      :person => nil
    ))
  end

  it "renders new course form" do
    render

    assert_select "form[action=?][method=?]", courses_path, "post" do

      assert_select "input#course_title[name=?]", "course[title]"

      assert_select "input#course_code[name=?]", "course[code]"

      assert_select "input#course_quote[name=?]", "course[quote]"

      assert_select "input#course_person_id[name=?]", "course[person_id]"
    end
  end
end
