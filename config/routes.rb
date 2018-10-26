Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/message_perso', to: "pages#message_perso"
  get 'pages/message_groupe', to: "pages#message_groupe"
  get 'pages/membre_groupe', to: "pages#membre_groupe"

  resources :groups do
    resources :registrations
    resources :conversations do
      resources :messages
      get "addlike", to: "conversations#add_like"
    end
  end
  resources :chapters
  devise_for :users
end
