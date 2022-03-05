class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

 ## def create
 #  @user = User.where(bookmark)
 #  if @user.confirmed? and @user.authenticate_user(params[:password])
 #    session[:user_id] = user.id
 #    redirect_to root_path
 #  else
 #    flash[:error] = "Already bookmarked company. Go to user dashboard to see your bookmarked companies."
 #    render :new
 #  end
 # end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password)}
  end
end
