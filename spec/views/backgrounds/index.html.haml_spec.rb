require 'rails_helper'

RSpec.describe "backgrounds/index", type: :view do
  before(:each) do
    assign(:backgrounds, [
      Background.create!(
        :name => "Name",
        :url => "MyText"
      ),
      Background.create!(
        :name => "Name",
        :url => "MyText"
      )
    ])
  end

  it "renders a list of backgrounds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
