require "rails_helper"

RSpec.describe SeguesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/segues").to route_to("segues#index")
    end

    it "routes to #new" do
      expect(get: "/segues/new").to route_to("segues#new")
    end

    it "routes to #show" do
      expect(get: "/segues/1").to route_to("segues#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/segues/1/edit").to route_to("segues#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/segues").to route_to("segues#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/segues/1").to route_to("segues#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/segues/1").to route_to("segues#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/segues/1").to route_to("segues#destroy", id: "1")
    end
  end
end
