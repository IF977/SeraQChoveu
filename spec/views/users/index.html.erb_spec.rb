require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Samir",
        :email => "samir@testando.com",
        :password_digest => "napazdosenhorhehe"
      ),
      User.create!(
        :name => "Samir",
        :email => "samirsan@testando.com",
        :password_digest => "napazdosenhorhehe"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Samir".to_s, :count => 2
    assert_select "tr>td", :text => "samir@testando.com".to_s, :count => 1
    assert_select "tr>td", :text => "samirsan@testando.com".to_s, :count => 1
    assert_select "tr>td", :text => "napazdosenhorhehe".to_s, :count => 2
  end
end
