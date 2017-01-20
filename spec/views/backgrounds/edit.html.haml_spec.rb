require 'rails_helper'

RSpec.describe "backgrounds/edit", type: :view do
  before(:each) do
    @background = assign(:background, Background.create!(
      :name => "MyString",
      :url => "MyText"
    ))
  end

  it "renders the edit background form" do
    render

    assert_select "form[action=?][method=?]", background_path(@background), "post" do

      assert_select "input#background_name[name=?]", "background[name]"

      assert_select "textarea#background_url[name=?]", "background[url]"
    end
  end
end
