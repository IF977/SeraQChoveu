require 'rails_helper'

RSpec.describe "comentarios/show", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :usuario => "Usuario",
      :texto => "MyText",
      :rate => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Usuario/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
  end
end
