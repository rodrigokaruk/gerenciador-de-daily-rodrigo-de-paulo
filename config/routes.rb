Rails.application.routes.draw do
  root 'pages#home'

  get "pessoas" => "pessoas#index", as: :pessoas

  get "grupos" => "grupos#index", as: :grupos

  get "sobre" => "pages#sobre", as: :sobre

  resources :pessoas

  # GET
  # POST

end
