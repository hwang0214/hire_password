class UserMailer < ActionMailer::Base
  default from: "avi@flatironschool.com"

  
  def password_reset(user)
    @user = user

    mail :to => user.email, :subject => "Flatiron Hire Password Reset"
  end
end