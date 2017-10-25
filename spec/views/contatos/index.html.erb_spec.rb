require 'rails_helper'

RSpec.describe "contatos/index", type: :view do
  before(:each) do
    assign(:contatos, [
      Contato.create!(
        :nome => "Nome",
        :email => "Email",
        :mensagem => "MyText"
      ),
      Contato.create!(
        :nome => "Nome",
        :email => "Email",
        :mensagem => "MyText"
      )
    ])
  end

  it "renders a list of contatos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
