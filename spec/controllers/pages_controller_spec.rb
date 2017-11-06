require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe "GET pages" do
    it "deve retornar GET #index" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "deve retornar GET #about" do
      get :about
      expect(response).to have_http_status(:success)
    end

    it "deve retornar GET #busca" do
      get :busca
      expect(response).to have_http_status(:success)
    end
  end

end
