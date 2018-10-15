Rails.application.routes.draw do
  root 'home#show'

  get 'auth/bnet/callback' => 'auth0#callback'
  get 'auth/bnet/deauthorized' => 'auth0#deauthorized'
  get 'auth/failure' => 'auth0#failure'
  get 'logout' => 'auth0#logout'
  get 'dashboard' => 'dashboard#show'

end
