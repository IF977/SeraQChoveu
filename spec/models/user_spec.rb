require 'rails_helper'

RSpec.describe User, type: :model do

    before(:each) do
        @user = User.create!(name: "Samir", email: "testando@lalala.com", password_digest: 123456)
    end

    describe "teste criar" do
        it "deve existir um usuário após a criação de um usuário" do
            expect(User.all.count).to eq(1)
        end
    describe 'testando email' do
       it { should_not allow_value("blah").for(:email) }
       it { should allow_value("a@b.com").for(:email) }
     end

    it 'deveria validar email' do
      usuario = User.new
      usuario.email = ''
      usuario.valid?
      usuario.errors[:email].should include("can't be blank") # verifica presença do erro

      usuario.email = 'exemplo@email.com'
      usuario.valid?
      usuario.errors[:email].should_not include("can't be blank") # verifica que não existe erro
  end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_digest) }
end
end
