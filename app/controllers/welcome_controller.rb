class WelcomeController < ApplicationController
    before_action :require_logged_in
  
    def home
      redirect_to employees_path
    end
  end