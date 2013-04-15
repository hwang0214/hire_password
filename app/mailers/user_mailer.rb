class UserMailer < ActionMailer::Base
  default from: "hireaflatironer@flatironschool.com"

  
  def password_reset(user)
    @user = user

    mail :to => user.email, :subject => "HireFlatiron App Password Reset"
  end
end