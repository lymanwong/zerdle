Rails.application.routes.draw do
  #adding home page
  root 'pages#landing'

  #adding posting page
  get 'posting' => 'pages#posting'

  #adding about page
  get 'about' => 'pages#about'

  #adding signup page
  get 'signup' => 'pages#signup'

  #adding login page
  get 'login' => 'pages#login'

end
