require 'rails_helper'

RSpec.describe "comentarios/edit", type: :view do
  before(:each) do
    @comentario = assign(:comentario, Comentario.create!(
      :usuario => "MyString",
      :texto => "MyText",
      :rate => 1
    ))
  end

  it "renders the edit comentario form" do
    render

    assert_select "form[action=?][method=?]", comentario_path(@comentario), "post" do

      assert_select "input[name=?]", "comentario[usuario]"

      assert_select "textarea[name=?]", "comentario[texto]"

      assert_select "input[name=?]", "comentario[rate]"
    end
  end
end
