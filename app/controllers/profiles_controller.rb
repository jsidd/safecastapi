class ProfilesController < ApplicationController
  
  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to :profile
    else
      render :edit
    end
  end
  
end