class Auth0Controller < ApplicationController
  def callback
    auth = request.env['omniauth.auth']
    session[:user_id] = auth['uid']
    session[:user_info] = auth['info']
    session[:debug] = auth.to_yaml

    # Redirect to the URL you want after successful auth
    redirect_to '/dashboard'
  end

  def deauthorized

  end

  def logout
    session[:user_id] = nil
    session[:user_info] = nil

    redirect_to '/'
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end
end
