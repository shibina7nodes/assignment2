Rails.application.routes.draw do
  resources :goals
   root "students#login"
  get "/form" => "students#form"
  get "/login" => "students#login"
  post "/login" => "students#login"
   post "/valid" => "students#valid"
  get "/new" => "goals#new"
    #post "/relocate" => "goal#relocate"
    # get "/goal" => "goal#"
  #get "/lo" => "studentsession#login"
  #get "/listing" => "students#listing"
  #get "/details" => "students#details"
  resource :students
end
