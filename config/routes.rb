Rails.application.routes.draw do
  root to: 'pages#home'
  get "page/home2", to: "page#home2"
  get "page/home3", to: "page#home3"

  resources :groups do
    resources :registrations
    resources :conversations do
      resources :messages
      get "addlike", to: "conversations#add_like"
      # get "addmessage", to: "conversations#add_message"
    end
  end
  resources :chapters
  devise_for :users
end
