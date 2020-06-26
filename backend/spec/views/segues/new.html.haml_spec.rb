require 'rails_helper'

RSpec.describe "segues/new", type: :view do
  before(:each) do
    assign(:segue, Segue.new(
      usuario: nil,
      caracteristica: nil
    ))
  end

  it "renders new segue form" do
    render

    assert_select "form[action=?][method=?]", segues_path, "post" do

      assert_select "input[name=?]", "segue[usuario_id]"

      assert_select "input[name=?]", "segue[caracteristica_id]"
    end
  end
end
