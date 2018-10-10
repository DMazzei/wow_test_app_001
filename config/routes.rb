Rails.application.routes.draw do
  root 'home#show'

  get 'auth/bnet/callback' => 'auth0#callback'
  get 'auth/failure' => 'auth0#failure'
  get 'dashboard' => 'dashboard#show'

end
