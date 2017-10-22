require 'rails_helper'

RSpec.describe User, type: :model do
    before(:each) do
        @user = User.create!(name: "Samir", email: "testando@lalala.com", password_digest: 123456)
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_digest) }

    it 'deve ser um usuário válido' do
        expect(@user.valid?).to be true
    end

    it 'não deve ter nome longo' do
        @user.name = 's' * 51
        expect(@user.valid?).to be false
    end

    it 'não deve ter email longo' do
        @user.email = 's' * 244 + '@cin.ufpe.br'
        expect(@user.valid?).to be false
    end

    it 'deve aceitar emails válidos' do
        validos = %w[samir@testando.com vvc@cin.ufpe.br johnny@boy.com afbs@gmail.com]
        validos.each do |mail|
            @user.email = mail
            expect(@user.valid?).to be true
        end
    end

    it 'deve rejeitar emails inválidos' do
        invalidos = %w[samir@testando,com vvccin.ufpe.br johnny@boy.@boy.com afbs@gmail+com]
        invalidos.each do |mail|
            @user.email = mail
            expect(@user.valid?). to be false
        end
    end

    it 'email deve ser único' do
        duplicado = @user.dup
        duplicado.email = @user.email.upcase
        @user.save
        expect(duplicado.valid?).to be false
    end

end
