require 'rails_helper'

RSpec.describe "segues/index", type: :view do
  before(:each) do
    assign(:segues, [
      Segue.create!(
        usuario: nil,
        caracteristica: nil
      ),
      Segue.create!(
        usuario: nil,
        caracteristica: nil
      )
    ])
  end

  it "renders a list of segues" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
