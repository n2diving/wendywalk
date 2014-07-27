Rails.application.routes.draw do

  root to: 'maps#home'

  get '/centers', to: 'maps#home', as: 'centers'

  # get '/results', to: 'maps#mapsresults', as: 'mapresults'

  get '/forums', to: 'forums#home', as: 'forums'

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
