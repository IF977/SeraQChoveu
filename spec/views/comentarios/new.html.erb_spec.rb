require 'rails_helper'

RSpec.describe "comentarios/new", type: :view do
  before(:each) do
    assign(:comentario, Comentario.new(
      :usuario => "MyString",
      :texto => "MyText",
      :rate => 1
    ))
  end

  it "renders new comentario form" do
    render

    assert_select "form[action=?][method=?]", comentarios_path, "post" do

      assert_select "input[name=?]", "comentario[usuario]"

      assert_select "textarea[name=?]", "comentario[texto]"

      assert_select "input[name=?]", "comentario[rate]"
    end
  end
end
