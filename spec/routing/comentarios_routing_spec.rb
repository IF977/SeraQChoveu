require "rails_helper"

RSpec.describe ComentariosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/comentarios").to route_to("comentarios#index")
    end

    it "routes to #new" do
      expect(:get => "/comentarios/new").to route_to("comentarios#new")
    end

    it "routes to #show" do
      expect(:get => "/comentarios/1").to route_to("comentarios#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/comentarios/1/edit").to route_to("comentarios#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/comentarios").to route_to("comentarios#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/comentarios/1").to route_to("comentarios#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/comentarios/1").to route_to("comentarios#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/comentarios/1").to route_to("comentarios#destroy", :id => "1")
    end

  end
end
