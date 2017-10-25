require 'rails_helper'

RSpec.describe "Contatos", type: :request do
  describe "GET /contatos" do
    it "works! (now write some real specs)" do
      get contatos_path
      expect(response).to have_http_status(200)
    end
  end
end
