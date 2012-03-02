require "spec_helper"

describe FundamentalsHistoriesController do
  describe "routing" do

    it "routes to #index" do
      get("/fundamentals_histories").should route_to("fundamentals_histories#index")
    end

    it "routes to #new" do
      get("/fundamentals_histories/new").should route_to("fundamentals_histories#new")
    end

    it "routes to #show" do
      get("/fundamentals_histories/1").should route_to("fundamentals_histories#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fundamentals_histories/1/edit").should route_to("fundamentals_histories#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fundamentals_histories").should route_to("fundamentals_histories#create")
    end

    it "routes to #update" do
      put("/fundamentals_histories/1").should route_to("fundamentals_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fundamentals_histories/1").should route_to("fundamentals_histories#destroy", :id => "1")
    end

  end
end
