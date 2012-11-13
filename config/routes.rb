Gallery::Application.routes.draw do

=begin
  These define the routes to  entities items and galleries.
=end
  resources :photo_items
  resources :photo_galleries

=begin
  This is root path of application.
=end
  root :to => "home#index"
  match '*a', :to => 'home#index' , :via => :get, :as => :no_route_found
end
