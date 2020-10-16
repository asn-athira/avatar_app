Rails.application.routes.draw do
  devise_for :users 	
  root 'pages#index', :as => :root_path
  resources :client_users
  get '/user' => "client_users#index", :as => :client_users_path

end
