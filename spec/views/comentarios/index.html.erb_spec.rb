require 'rails_helper'

RSpec.describe "comentarios/index", type: :view do
  before(:each) do
    assign(:comentarios, [
      Comentario.create!(
        :usuario => "Usuario",
        :texto => "MyText",
        :rate => 2
      ),
      Comentario.create!(
        :usuario => "Usuario",
        :texto => "MyText",
        :rate => 2
      )
    ])
  end

  it "renders a list of comentarios" do
    render
    assert_select "tr>td", :text => "Usuario".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
