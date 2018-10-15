class HomeController < ApplicationController
  before_action :require_token!

  def require_token!
    if session[:userinfo]
      redirect_to '/dashboard'
    end
  end

  def show
  end
end
