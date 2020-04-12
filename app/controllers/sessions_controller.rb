class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user
      session[:user_id] = user.id
      flash[:success] = "Successfully Login"
      redirect_to root_path
    else
      flash.now[:danger] = "there was something wrong with your login information"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have logged out"
    redirect_to root_path
  end

  private
    def session_params
      params.require(:session).permit(:name)
    end

end