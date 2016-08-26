require "rails_helper"

RSpec.describe ScheduletimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/scheduletimes").to route_to("scheduletimes#index")
    end

    it "routes to #new" do
      expect(:get => "/scheduletimes/new").to route_to("scheduletimes#new")
    end

    it "routes to #show" do
      expect(:get => "/scheduletimes/1").to route_to("scheduletimes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/scheduletimes/1/edit").to route_to("scheduletimes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/scheduletimes").to route_to("scheduletimes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/scheduletimes/1").to route_to("scheduletimes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/scheduletimes/1").to route_to("scheduletimes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/scheduletimes/1").to route_to("scheduletimes#destroy", :id => "1")
    end

  end
end
