require 'rails_helper'

RSpec.describe "phrases/index", type: :view do
  before(:each) do
    assign(:phrases, [
      Phrase.create!(
        :phrase => "MyText",
        :author => "Author",
        :seen => false
      ),
      Phrase.create!(
        :phrase => "MyText",
        :author => "Author",
        :seen => false
      )
    ])
  end

  it "renders a list of phrases" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
