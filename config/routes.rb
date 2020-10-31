Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/youngest", { :controller => "directors", :action => "newest" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })
end
