Rails.application.routes.draw do
  resources :postings
  devise_for :users
  #adding home page
  root 'pages#landing'

  #adding mission page
  get 'mission' => 'pages#mission'

  #adding signup page
  get 'signup' => 'pages#signup'

  #adding login page
  get 'login' => 'pages#login'

end
