ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "ifrangtech.com",
  :user_name            => "karuppannan.irtt",
  :password             => "Vipin_1980",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
#ActionMailer::Base.default_url_options[:host] = "#{UserMailer.local_ip}:3000"
#ActionMailer::Base.default_url_options[:host] = "115.242.166.48:3000"