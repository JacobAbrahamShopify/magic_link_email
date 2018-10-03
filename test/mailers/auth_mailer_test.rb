require 'test_helper'

class AuthMailerTest < ActionMailer::TestCase
  test "send_magic_link sends email with magic link" do

    email = AuthMailer.send_magic_link('user@email.com')


    assert_equal AuthMailer.default_params[:from], email.from
    assert_equal 'user@email.com', email.to
    assert_equal AuthMailer.default_params[:subject], email.subject

  end
end
