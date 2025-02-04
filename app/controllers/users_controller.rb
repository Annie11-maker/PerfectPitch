class UsersController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
  end

  def edit
    # @user = current_user # makes sure we are editing the current user
  end

  def update
    # @user = current_user # makes sure we are updating the current user
    # if @user.update(user_params) # if the user is updated successfully
    #   redirect_to edit_user_registration_path, notice: 'Account updated successfully' # redirect to the user's profile page
    # else
    #   render :edit # if the user is not updated successfully, render the edit page again
    # end
  end

  def destroy
  end

  # private

  # def user_params # strong parameters
  #   # params.require(:user).permit(:email, :password, :password_confirmation) # only allow these parameters to be updated
  # end
end
