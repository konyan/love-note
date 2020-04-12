class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  def show
    @articles = @user.articles
  end

  private

    def user_params
      params.permit(:name)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def require_same_user
      return if !logged_in? && current_user != user
        flash[:danger] = 'You can only edit your own account'
        redirect_to root_path
      end
    end

    def require_admin
      return if logged_in? && !current_user.admin?
        flash[:danger] = 'Only admin user users can perform that action'
        redirect_to root_path
      end
    end
end
