class RegistrationsController < Devise::RegistrationsController

  #  private
  
    def sign_up_params
      params.require(:user).permit(:name, :dob, :email, :password, :password_confirmation,:gender,:photo)
    end
  
    def account_update_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
    end
  end