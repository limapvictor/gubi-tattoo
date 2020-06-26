require 'rails_helper'

RSpec.describe "segues/show", type: :view do
  before(:each) do
    @segue = assign(:segue, Segue.create!(
      usuario: nil,
      caracteristica: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
