class UserMailer < ActionMailer::Base
 default :from => "karuppannan.irtt@gmail.com"
  def registration_confirmation(user)
  	@user = user
  	#@local_ip = local_ip
  	@ip_address= local_ip
   #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "#{local_ip} #{user.name}  - Registered" , :host => "#{local_ip}:3000")
  end

  def local_ip
  orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily

  UDPSocket.open do |s|
    s.connect '64.233.187.99', 1
    s.addr.last
  end
ensure
  Socket.do_not_reverse_lookup = orig
end

end
