ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com',
  domain: 'gmail.com',
  port: 587,
  user_name: 'mmdrdr6@gmail.com',
  password: ENV["GMAIL_KEY"],
  authentication: 'plain',
  enable_starttls_auto: true
}