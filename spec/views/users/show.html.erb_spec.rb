require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Samir",
      :email => "samir@testando.com",
      :password => "daleboyenois",
      :password_confirmation => "daleboyenois"
    ))
  end
  #adicionar testes
end
