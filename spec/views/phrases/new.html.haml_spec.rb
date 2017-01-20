require 'rails_helper'

RSpec.describe "phrases/new", type: :view do
  before(:each) do
    assign(:phrase, Phrase.new(
      :phrase => "MyText",
      :author => "MyString",
      :seen => false
    ))
  end

  it "renders new phrase form" do
    render

    assert_select "form[action=?][method=?]", phrases_path, "post" do

      assert_select "textarea#phrase_phrase[name=?]", "phrase[phrase]"

      assert_select "input#phrase_author[name=?]", "phrase[author]"

      assert_select "input#phrase_seen[name=?]", "phrase[seen]"
    end
  end
end
