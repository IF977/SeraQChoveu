require 'rails_helper'

RSpec.describe Cidade, type: :model do
    before(:each) do
        @cidade = Cidade.create!(nome: "Rio de Janeiro", dia: "12/12",
        precipitacao: '50', ocorrencias: '22', fracas: '16', moderadas: '4',
        fortes: '2')
    end

    it { is_expected.to validate_presence_of(:nome) }
    it { is_expected.to validate_presence_of(:dia) }
    it { is_expected.to validate_presence_of(:precipitacao) }
    it { is_expected.to validate_presence_of(:ocorrencias) }
    it { is_expected.to validate_presence_of(:fracas) }
    it { is_expected.to validate_presence_of(:moderadas) }
    it { is_expected.to validate_presence_of(:fortes) }

    it 'deve ser uma cidade válida' do
        expect(@cidade.valid?).to be true
    end
end
