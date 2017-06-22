require 'rails_helper'

RSpec.describe "dices/index", type: :view do
  before(:each) do
    assign(:dices, [
      Dice.create!(
        :name => "Name",
        :edges => 2
      ),
      Dice.create!(
        :name => "Name",
        :edges => 2
      )
    ])
  end

  it "renders a list of dices" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
