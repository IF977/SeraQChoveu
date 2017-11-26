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
  it "render atributos " do
    render
    expect(rendered).to match(/Samir/)
    expect(rendered).to match(/samir@testando.com/)
  end
end
