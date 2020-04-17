class SessionsController < ApplicationController
  def new; end

  def create
    name = params[:session][:name].downcase
    user = User.find_by(name: name)
    if user
      session[:user_id] = user.id
      flash[:success] = 'Successfully Login'
    else
      flash[:info] = "new username #{name} is registered. "
      user = User.create(name: name)
      session[:user_id] = user.id
    end
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged out'
    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:name)
  end
end
