class RegistrationsController < Devise::RegistrationsController
  def update
  	# http://stackoverflow.com/questions/13436232/editing-users-with-devise-and-omniauth#comment18368874_13436232
    # @user = User.find(current_user.id)
    # email_changed = @user.email != params[:user][:email]
    # is_facebook_account = !@user.provider.blank?

    # successfully_updated = if !is_facebook_account
    #   @user.update_with_password(params[:user])
    # else
    #   @user.update_without_password(params[:user])
    # end

    # if successfully_updated
    #   # Sign in the user bypassing validation in case his password changed
    #   sign_in @user, :bypass => true
    #   redirect_to root_path
    # else
    #   render "edit"
    # end

    # https://github.com/plataformatec/devise/wiki/How-To:-Allow-users-to-edit-their-account-without-providing-a-password
    # required for settings form to submit when password is left blank
    if params[:user][:password].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end

    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end
end
