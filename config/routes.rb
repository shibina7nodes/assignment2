Rails.application.routes.draw do
   root "students#form"
  get "/form" => "students#form"
  get "/listing" => "students#listing"
  get "/details" => "students#details"
  resource :students
end
