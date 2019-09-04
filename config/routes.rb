Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  get "/" => "movie_listings#index"
  
  get "/new_purchase/:id" => "purchases#new_purchase"

  post "/new_purchase/create" => "purchases#create"

  get "/admin_dashboard" => "dashboards#index"

end
