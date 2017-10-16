require 'rails_helper'

RSpec.describe "Comentarios", type: :request do
  describe "GET /comentarios" do
    it "works! (now write some real specs)" do
      get comentarios_path
      expect(response).to have_http_status(200)
    end
  end
end
