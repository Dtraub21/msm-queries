Rails.application.routes.draw do
  # Root route
  get("/", { :controller => "misc", :action => "homepage" })


  # Routes for directors
  get "/directors", to: "directors#index"
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })
  get("/directors/:director_id", {:controller => "directors", :action => "show"})


  # Routes for movies
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:the_id", { :controller => "movies", :action => "show" })

  # Routes for actors
  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:the_id", { :controller => "actors", :action => "show" })

  # Routes for characters
  get("/characters", { :controller => "characters", :action => "index" })
  get("/characters/:the_id", { :controller => "characters", :action => "show" })
end
