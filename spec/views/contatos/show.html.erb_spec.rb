require 'rails_helper'

RSpec.describe "contatos/show", type: :view do
  before(:each) do
    @contato = assign(:contato, Contato.create!(
      :nome => "Bemtriste",
      :email => "estou@pqtomefudendo.com",
      :mensagem => "jesusmesalva"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bemtriste/)
    expect(rendered).to match(/estou@pqtomefudendo.com/)
    expect(rendered).to match(/jesusmesalva/)
  end
end
