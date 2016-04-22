Rails.application.routes.draw do

  root to: "home#index"
  
  get "/index" => "home#index"

  get "/dashboard" => "dashboards#dashboard"
    

end
