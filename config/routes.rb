Rails.application.routes.draw do
  root to: 'pages#home'
  resources :groups do
    resources :registrations
    resources :conversations do
      resources :messages
    end
  end
  resources :chapters
  devise_for :users
end
