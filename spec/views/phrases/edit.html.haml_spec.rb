require 'rails_helper'

RSpec.describe "phrases/edit", type: :view do
  before(:each) do
    @phrase = assign(:phrase, Phrase.create!(
      :phrase => "MyText",
      :author => "MyString",
      :seen => false
    ))
  end

  it "renders the edit phrase form" do
    render

    assert_select "form[action=?][method=?]", phrase_path(@phrase), "post" do

      assert_select "textarea#phrase_phrase[name=?]", "phrase[phrase]"

      assert_select "input#phrase_author[name=?]", "phrase[author]"

      assert_select "input#phrase_seen[name=?]", "phrase[seen]"
    end
  end
end
