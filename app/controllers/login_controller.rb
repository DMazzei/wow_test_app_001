class LoginController < ApplicationController
  before_action :require_token!

  def require_token!
    unless session[:userinfo]
      redirect_to '/auth/bnet'
    end
  end
end