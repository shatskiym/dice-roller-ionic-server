require 'rails_helper'

RSpec.describe "dices/show", type: :view do
  before(:each) do
    @dice = assign(:dice, Dice.create!(
      :name => "Name",
      :edges => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
