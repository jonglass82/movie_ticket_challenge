Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  #home page movie listings routes

  get "/" => "movie_listings#index"
  
  get "/new_purchase/:id" => "purchases#new_purchase"

  post "/new_purchase/create" => "purchases#create"

  #admin dashboard routes

  get "/admin_dashboard" => "dashboards#index"

  #Auditorium routes

  get "/auditorium/new" => "auditoriums#new"
  get "/auditorium/edit/:id" => "auditoriums#edit"
  get "/auditorium/update/:id" => "auditoriums#update"
  post "/auditorium/create" => "auditoriums#create"
  patch "/auditorium/update/:id" => "auditoriums#update"

  #Movie routes

  get "/movie/new" => "movies#new"
  get "/movie/edit/:id" => "movies#edit"
  get "/movie/update/:id" => "movies#update"
  get "/movie/search" => "movies#search"
  post "/movie/create" => "movies#create"
  patch "/movie/edit/:id" => "movies#update"

end
