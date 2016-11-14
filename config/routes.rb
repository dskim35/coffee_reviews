Rails.application.routes.draw do
  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

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
