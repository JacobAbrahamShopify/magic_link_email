require 'test_helper'

class AuthMailerTest < ActionMailer::TestCase
  test "send_magic_link sends email with magic link" do

    m = AuthMailer.send_magic_link('jacobabraham0429@gmail.com').deliver

		email = ActionMailer::Base.deliveries.last


    assert_equal AuthMailer.default_params[:from], email['from'].to_s
    assert_equal 'jacobabraham0429@gmail.com', email['to'].to_s
    assert_equal AuthMailer.default_params[:subject], email['subject'].to_s
  end
end
