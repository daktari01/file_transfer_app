require 'rails_helper'

RSpec.describe "galleries/index", type: :view do
  before(:each) do
    assign(:galleries, [
      Gallery.create!(
        :description => "Description"
      ),
      Gallery.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
