Rails.application.routes.draw do
  #adding home page
  root 'pages#home'

  #adding about page
  get 'about' => 'pages#about'




end
