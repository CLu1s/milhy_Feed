require 'rails_helper'

RSpec.describe "backgrounds/show", type: :view do
  before(:each) do
    @background = assign(:background, Background.create!(
      :name => "Name",
      :url => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
