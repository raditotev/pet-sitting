class SessionsController < ApplicationController

  def create
    sitter = Sitter.find_by(name: params[:session][:name])
    owner = Owner.find_by(name: params[:session][:name])
    if sitter or owner
      if sitter
        @user = sitter
      else owner
        @user = owner
      end
    login(@user)
    #add message
    redirect_to root_url
    else
      # Add error message
      redirect_to login_path
    end
  end

  def destroy
    user = current_user
    logout(user)
    #add message
    redirect_to root_url
  end
end
