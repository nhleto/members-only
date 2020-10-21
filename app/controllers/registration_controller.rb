# extends devise functionality to allow for custom inputs

class RegistrationController < ApplicationController

  private

  def sign_up_parameters
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
  end

  def update_account_parameters
    params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password)
  end
end
