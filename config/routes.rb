Rails.application.routes.draw do

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'


  devise_for :users
  root to: 'maps#home'

  get '/centers', to: 'maps#home', as: 'centers'

  get '/mapresults', to: 'maps#results', as: 'mapresults'

  get '/forums', to: 'forums#home', as: 'forums'

  get '/center', to: 'centers#index', as: 'center'

  get '/results', to: 'centers#results', as: 'results'

  get '/search', to: 'centers#search', as: 'search'

end


#   Prefix Verb   URI Pattern                Controller#Action
#       maps GET    /maps(.:format)            maps#index
#            POST   /maps(.:format)            maps#create
#    new_map GET    /maps/new(.:format)        maps#new
#   edit_map GET    /maps/:id/edit(.:format)   maps#edit
#        map GET    /maps/:id(.:format)        maps#show
#            PATCH  /maps/:id(.:format)        maps#update
#            PUT    /maps/:id(.:format)        maps#update
#            DELETE /maps/:id(.:format)        maps#destroy
#     forums GET    /forums(.:format)          forums#index
#            POST   /forums(.:format)          forums#create
#  new_forum GET    /forums/new(.:format)      forums#new
# edit_forum GET    /forums/:id/edit(.:format) forums#edit
#      forum GET    /forums/:id(.:format)      forums#show
#            PATCH  /forums/:id(.:format)      forums#update
#            PUT    /forums/:id(.:format)      forums#update
#            DELETE /forums/:id(.:format)      forums#destroy
#       root GET    /                          maps#home
