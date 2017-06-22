require 'rails_helper'

RSpec.describe "dices/new", type: :view do
  before(:each) do
    assign(:dice, Dice.new(
      :name => "MyString",
      :edges => 1
    ))
  end

  it "renders new dice form" do
    render

    assert_select "form[action=?][method=?]", dices_path, "post" do

      assert_select "input#dice_name[name=?]", "dice[name]"

      assert_select "input#dice_edges[name=?]", "dice[edges]"
    end
  end
end
