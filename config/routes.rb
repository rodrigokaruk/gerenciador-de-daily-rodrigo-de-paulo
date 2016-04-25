Rails.application.routes.draw do
  resources :formulatios
  resources :integrantes
  
  root 'pages#home'

  get "pessoas" => "pessoas#index", as: :pessoas

  get "grupos" => "grupos#index", as: :grupos

  get "sobre" => "pages#sobre", as: :sobre

  resources :pessoas
  resources :grupos

  # GET
  # POST

end
