class RegistrationsController < Devise::RegistrationsController
  private
   def sign_up_params
    params.require(:user).permit(:phone, :email, :password, :password_confirmation, :fullname)
  end 
end
