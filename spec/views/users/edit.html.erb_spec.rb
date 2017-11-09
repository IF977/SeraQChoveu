require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Samir",
      :email => "samir@testando.com",
      :password => "eitaenois",
      :password_confirmation => "eitaenois"
    ))
  end
  #adicionar testes
end
