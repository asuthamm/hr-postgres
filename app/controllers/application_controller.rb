class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_user
      # byebug
      @user = (User.find_by(id: session[:user_id]) || User.new)
      # byebug
    end
  
    def logged_in?
      # byebug
      current_user.id != nil
    end
  
    def require_logged_in
      # byebug
      return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
    end
  
end
