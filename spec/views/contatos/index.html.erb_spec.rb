require 'rails_helper'

RSpec.describe "contatos/index", type: :view do
  before(:each) do
    assign(:contatos, [
      Contato.create!(
        :nome => "Eraumavez",
        :email => "um@lugarzinho.nonada",
        :mensagem => "Com sabor de chocolate :)"
      ),
      Contato.create!(
        :nome => "Upaupa",
        :email => "cavalinho@daledale.com.br",
        :mensagem => "Nossasenhora"
      )
    ])
  end
  #adicionar testes
end
