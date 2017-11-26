require 'rails_helper'

RSpec.describe Contato, type: :model do
    before(:each) do
        @contato = Contato.create!(nome: "Samir", email: "testando@lalala.com",
        mensagem: "Essa aplicação é do carai brother")
    end

    it { is_expected.to validate_presence_of(:nome) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:mensagem) }

    it 'deve ser uma mensagem válida' do
        expect(@contato.valid?).to be true
    end

    it 'não deve ter nome longo' do
        @contato.nome = 's' * 51
        expect(@contato.valid?).to be false
    end

    it 'não deve ter email longo' do
        @contato.email = 's' * 244 + '@cin.ufpe.br'
        expect(@contato.valid?).to be false
    end

    it 'deve aceitar emails válidos' do
        validos = %w[samir@testando.com vvc@cin.ufpe.br johnny@boy.com afbs@gmail.com]
        validos.each do |mail|
            @contato.email = mail
            expect(@contato.valid?).to be true
        end
    end

    it 'deve rejeitar emails inválidos' do
        invalidos = %w[samir@testando,com vvccin.ufpe.br johnny@boy.@boy.com afbs@gmail+com]
        invalidos.each do |mail|
            @contato.email = mail
            expect(@contato.valid?). to be false
        end
    end

    it 'email deve ser único' do
        duplicado = @contato.dup
        duplicado.email = @contato.email.upcase
        @contato.save
        expect(duplicado.valid?).to be false
    end

    it 'email deve ser salvo minusculo' do
        email_errado = 'SaMiR@TeStAnDO.COm'
        @contato.email = email_errado
        @contato.save
        expect(@contato.email).to eq(email_errado.downcase)
    end

    it 'mensagem deve estar presente' do
        @contato.mensagem = ' ' * 8
        expect(@contato.valid?).to be false
    end
end
