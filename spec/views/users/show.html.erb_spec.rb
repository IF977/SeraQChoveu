require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Samir",
      :email => "samir@testando.com",
      :password_digest => "daleboyenois"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Samir/)
    expect(rendered).to match(/samir@testando.com/)
    expect(rendered).to match(/daleboyenois/)
  end
end
