require 'rails_helper'

RSpec.describe "backgrounds/new", type: :view do
  before(:each) do
    assign(:background, Background.new(
      :name => "MyString",
      :url => "MyText"
    ))
  end

  it "renders new background form" do
    render

    assert_select "form[action=?][method=?]", backgrounds_path, "post" do

      assert_select "input#background_name[name=?]", "background[name]"

      assert_select "textarea#background_url[name=?]", "background[url]"
    end
  end
end
