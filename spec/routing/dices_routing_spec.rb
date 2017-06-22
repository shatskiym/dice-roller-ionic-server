require "rails_helper"

RSpec.describe DicesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dices").to route_to("dices#index")
    end

    it "routes to #new" do
      expect(:get => "/dices/new").to route_to("dices#new")
    end

    it "routes to #show" do
      expect(:get => "/dices/1").to route_to("dices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dices/1/edit").to route_to("dices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dices").to route_to("dices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dices/1").to route_to("dices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dices/1").to route_to("dices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dices/1").to route_to("dices#destroy", :id => "1")
    end

  end
end
