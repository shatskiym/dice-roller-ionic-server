require 'rails_helper'

RSpec.describe "dices/edit", type: :view do
  before(:each) do
    @dice = assign(:dice, Dice.create!(
      :name => "MyString",
      :edges => 1
    ))
  end

  it "renders the edit dice form" do
    render

    assert_select "form[action=?][method=?]", dice_path(@dice), "post" do

      assert_select "input#dice_name[name=?]", "dice[name]"

      assert_select "input#dice_edges[name=?]", "dice[edges]"
    end
  end
end
