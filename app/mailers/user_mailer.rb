class UserMailer < ActionMailer::Base
  default :from => "pcu000@gmail.com"
  
  def registration_mail(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Micropost - Welcome")
  end
  
  def password_reset(user)
    @user = user
    mail :to => "#{user.name} <#{user.email}>", :subject => "Micropost - Password Reset"
  end
end