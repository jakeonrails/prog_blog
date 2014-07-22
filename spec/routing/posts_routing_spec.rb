require "rails_helper"

RSpec.describe PostsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(get: "/username").to route_to("posts#index", user_id: 'username')
    end

    it "routes to #new" do
      expect(get: "/username/new").to route_to("posts#new", user_id: 'username')
    end

    it "routes to #show" do
      expect(get: "/username/1").to route_to("posts#show", id: "1", user_id: 'username')
    end

    it "routes to #edit" do
      expect(get: "/username/1/edit").to route_to("posts#edit", id: "1", user_id: 'username')
    end

    it "routes to #create" do
      expect(post: "/username").to route_to("posts#create", user_id: 'username')
    end

    it "routes to #update" do
      expect(put: "/username/1").to route_to("posts#update", id: "1", user_id: 'username')
    end

    it "routes to #destroy" do
      expect(delete: "/username/1").to route_to("posts#destroy", id: "1", user_id: 'username')
    end

  end
end
