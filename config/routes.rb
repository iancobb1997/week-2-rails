Rails.application.routes.draw do
  get 'home', to:'pages#home'

  get 'profile', to: 'pages#profile'

  get 'news', to: 'pages#news'

  devise_for :admins
	get 'profile', to: 'pages#home'

  root to: "pages#home"
end
