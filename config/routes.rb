Rails.application.routes.draw do
  root to: 'pages#home'
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
