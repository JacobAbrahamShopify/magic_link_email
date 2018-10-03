# Load the Rails application.
require_relative 'application'


ActionMailer::Base.smtp_settings = {
  :user_name => 'jacob042995@gmail.com',
  :password => 'longacre1',
  :domain => 'yourdomain.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# Initialize the Rails application.
Rails.application.initialize!
