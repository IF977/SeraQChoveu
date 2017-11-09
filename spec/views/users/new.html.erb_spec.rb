require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "Vanessa",
      :email => "irma@cin.ufpe.br",
      :password => "aleluiairmao",
      :password_confirmation => "aleluiairmao"
    ))
  end
  #adicionar testes
end
