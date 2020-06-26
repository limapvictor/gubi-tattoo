require 'rails_helper'

RSpec.describe "segues/edit", type: :view do
  before(:each) do
    @segue = assign(:segue, Segue.create!(
      usuario: nil,
      caracteristica: nil
    ))
  end

  it "renders the edit segue form" do
    render

    assert_select "form[action=?][method=?]", segue_path(@segue), "post" do

      assert_select "input[name=?]", "segue[usuario_id]"

      assert_select "input[name=?]", "segue[caracteristica_id]"
    end
  end
end
