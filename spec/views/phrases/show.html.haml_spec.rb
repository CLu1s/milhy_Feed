require 'rails_helper'

RSpec.describe "phrases/show", type: :view do
  before(:each) do
    @phrase = assign(:phrase, Phrase.create!(
      :phrase => "MyText",
      :author => "Author",
      :seen => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/false/)
  end
end
