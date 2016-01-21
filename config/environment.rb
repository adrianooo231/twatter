# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :port           => ENV['MAILGUN_SMTP_PORT'],
  :address        => ENV['104.130.122.3'],
  :user_name      => ENV['postmaster@powerful-brushlands-50172.herokuapp.com'],
  :password       => ENV['acac7c229195f2cbbba387fafc7bf89b'],
  :domain         => 'powerful-brushlands-50172.herokuapp.com',
  :authentication => :plain,
}
ActionMailer::Base.delivery_method = :smtp
