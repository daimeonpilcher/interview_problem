require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name, => "Jane",
      :last_name, => "Doe",
      :email, => "jdoe@email.com",
      :social_security_number => "123456789"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name,[name=?]", "user[first_name,]"

      assert_select "input#user_last_name,[name=?]", "user[last_name,]"

      assert_select "input#user_email,[name=?]", "user[email,]"

      assert_select "input#user_social_security_number[name=?]", "user[social_security_number]"
    end
  end
end
