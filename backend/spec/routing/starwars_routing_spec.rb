require "rails_helper"

RSpec.describe StarwarsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/starwars").to route_to("starwars#index")
    end

    it "routes to #show" do
      expect(get: "/starwars/1").to route_to("starwars#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/starwars").to route_to("starwars#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/starwars/1").to route_to("starwars#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/starwars/1").to route_to("starwars#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/starwars/1").to route_to("starwars#destroy", id: "1")
    end
  end
end
