class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      session[:user_id] = @user.id
      if @user.role == "Student"
        # UserMailer.password_reset(@user).deliver
        redirect_to new_student_path(@user), notice: "Account created!"
      else
        if !params[:employer] || (params[:employer][:employer_identity] == "New Employer")
          redirect_to new_employer_path
        else
          @employer = Employer.where(:name => params[:employer][:employer_identity]).first

          if @employer
            # UserMailer.password_reset(@user).deliver
            redirect_to edit_employer_path(@employer)
          else
            redirect_to new_employer_path
          end
        end
      end
    else
      render "new"
    end
  end
end
