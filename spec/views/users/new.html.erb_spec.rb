require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :first_name, => "Jane",
      :last_name, => "Doe",
      :email, => "name@email.com",
      :social_security_number => "123-45-678"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_first_name,[name=?]", "user[first_name,]"

      assert_select "input#user_last_name,[name=?]", "user[last_name,]"

      assert_select "input#user_email,[name=?]", "user[email,]"

      assert_select "input#user_social_security_number[name=?]", "user[social_security_number]"
    end
  end
end
