require 'rails_helper'

RSpec.describe "Dices", type: :request do
  describe "GET /dices" do
    it "works! (now write some real specs)" do
      get dices_path
      expect(response).to have_http_status(200)
    end
  end
end
