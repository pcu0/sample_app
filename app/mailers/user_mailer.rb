class UserMailer < ActionMailer::Base
  default :from => "pcu000@gmail.com"
  
  def registration_mail(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end