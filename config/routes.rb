Rails.application.routes.draw do

  root to: "home#index"
  
  get "/index" => "home#index"

  get "/dashboard" => "dashboards#dashboard"

  get '/auth/:provider/callback', to: 'sessions#create'
    

end
