class RegistrationsController < Devise::RegistrationsController

  #  private
  
    def sign_up_params
      params.require(:user).permit(:name, :dob, :email, :password, :password_confirmation,:gender,:avatar)
    end
  
    def account_update_params
      params.require(:user).permit(:name, :dob, :email, :password, :password_confirmation,:gender,:avatar)
    end
  end