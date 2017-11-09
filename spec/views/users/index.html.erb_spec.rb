require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Samir",
        :email => "samir@testando.com",
        :password => "napazdosenhorhehe",
        :password_confirmation => "napazdosenhorhehe"
      ),
      User.create!(
        :name => "Ayrton",
        :email => "ayrtonsan@testando.com",
        :password => "napazdosenhorhehe",
        :password_confirmation => "napazdosenhorhehe"
      )
    ])
  end
  #adicionar testes
end
