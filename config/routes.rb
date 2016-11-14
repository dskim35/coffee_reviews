Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Shop resource:
  # CREATE
  get "/shops/new", :controller => "shops", :action => "new"
  post "/create_shop", :controller => "shops", :action => "create"

  # READ
  get "/shops", :controller => "shops", :action => "index"
  get "/shops/:id", :controller => "shops", :action => "show"

  # UPDATE
  get "/shops/:id/edit", :controller => "shops", :action => "edit"
  post "/update_shop/:id", :controller => "shops", :action => "update"

  # DELETE
  get "/delete_shop/:id", :controller => "shops", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
