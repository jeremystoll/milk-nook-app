Rails.application.routes.draw do

  root to: "home#index"
  
  get "admin" => "home#index"
    

end
