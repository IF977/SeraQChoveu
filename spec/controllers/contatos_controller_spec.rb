require 'rails_helper'

RSpec.describe ContatosController, type: :controller do
  let(:valid_attributes) {
    {nome: "Samirboy", email: "svaf2@cin.ufpe.br", mensagem: "nois tira onda"}
  }

  let(:invalid_attributes) {
    {nome: "  afs   ", email: "tudoerrado.com", mensagem: "bundalele"}
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      contato = Contato.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      contato = Contato.create! valid_attributes
      get :show, params: {id: contato.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Contato" do
        expect {
          post :create, params: {contato: valid_attributes}, session: valid_session
        }.to change(Contato, :count).by(1)
      end

      it "redireciona para a homepage" do
        post :create, params: {contato: valid_attributes}, session: valid_session
        expect(response).to redirect_to(root_path)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {contato: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        {nome: "uhlala", email: "serasse@olar.com", mensagem: "tosempaciencia"}
      }

      it "updates the requested contato" do
        contato = Contato.create! valid_attributes
        put :update, params: {id: contato.to_param, contato: new_attributes}, session: valid_session
        contato.reload
        expect(contato).to have_attributes(:nome => "uhlala", :email => "serasse@olar.com",
                                           :mensagem => "tosempaciencia")
      end

      it "redirects to the contato" do
        contato = Contato.create! valid_attributes
        put :update, params: {id: contato.to_param, contato: valid_attributes}, session: valid_session
        expect(response).to redirect_to(contato)
      end
    end

  end

  describe "DELETE #destroy" do
    it "destroys the requested contato" do
      contato = Contato.create! valid_attributes
      expect {
        delete :destroy, params: {id: contato.to_param}, session: valid_session
      }.to change(Contato, :count).by(-1)
    end

    it "redirects to the contatos list" do
      contato = Contato.create! valid_attributes
      delete :destroy, params: {id: contato.to_param}, session: valid_session
      expect(response).to redirect_to(contatos_url)
    end
  end

end
