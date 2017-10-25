require "rails_helper"

RSpec.describe ContatosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contatos").to route_to("contatos#index")
    end

    it "routes to #new" do
      expect(:get => "/contatos/new").to route_to("contatos#new")
    end

    it "routes to #show" do
      expect(:get => "/contatos/1").to route_to("contatos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contatos/1/edit").to route_to("contatos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contatos").to route_to("contatos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contatos/1").to route_to("contatos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contatos/1").to route_to("contatos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contatos/1").to route_to("contatos#destroy", :id => "1")
    end

  end
end
