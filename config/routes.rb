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

#   Prefix Verb   URI Pattern                    Controller#Action
#                    forem        /forums                        Forem::Engine
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                     root GET    /                              maps#home
#                  centers GET    /centers(.:format)             maps#home
#               mapresults GET    /mapresults(.:format)          maps#results
#                   forums GET    /forums(.:format)              forums#home
#                   center GET    /center(.:format)              centers#index
#                  results GET    /results(.:format)             centers#results
#                   search GET    /search(.:format)              centers#search

# Routes for Forem::Engine:
#                          root GET    /                                                        forem/forums#index
#                    categories GET    /categories(.:format)                                    forem/categories#index
#                      category GET    /categories/:id(.:format)                                forem/categories#show
#                    admin_root GET    /admin(.:format)                                         forem/admin/base#index
#       add_admin_group_members POST   /admin/groups/:group_id/members/add(.:format)            forem/admin/members#add
#            admin_group_member DELETE /admin/groups/:group_id/members/:id(.:format)            forem/admin/members#destroy
#                  admin_groups GET    /admin/groups(.:format)                                  forem/admin/groups#index
#                               POST   /admin/groups(.:format)                                  forem/admin/groups#create
#               new_admin_group GET    /admin/groups/new(.:format)                              forem/admin/groups#new
#              edit_admin_group GET    /admin/groups/:id/edit(.:format)                         forem/admin/groups#edit
#                   admin_group GET    /admin/groups/:id(.:format)                              forem/admin/groups#show
#                               PATCH  /admin/groups/:id(.:format)                              forem/admin/groups#update
#                               PUT    /admin/groups/:id(.:format)                              forem/admin/groups#update
#                               DELETE /admin/groups/:id(.:format)                              forem/admin/groups#destroy
#        admin_forum_moderators GET    /admin/forums/:forum_id/moderators(.:format)             forem/admin/moderators#index
#                               POST   /admin/forums/:forum_id/moderators(.:format)             forem/admin/moderators#create
#     new_admin_forum_moderator GET    /admin/forums/:forum_id/moderators/new(.:format)         forem/admin/moderators#new
#    edit_admin_forum_moderator GET    /admin/forums/:forum_id/moderators/:id/edit(.:format)    forem/admin/moderators#edit
#         admin_forum_moderator GET    /admin/forums/:forum_id/moderators/:id(.:format)         forem/admin/moderators#show
#                               PATCH  /admin/forums/:forum_id/moderators/:id(.:format)         forem/admin/moderators#update
#                               PUT    /admin/forums/:forum_id/moderators/:id(.:format)         forem/admin/moderators#update
#                               DELETE /admin/forums/:forum_id/moderators/:id(.:format)         forem/admin/moderators#destroy
# toggle_hide_admin_forum_topic PUT    /admin/forums/:forum_id/topics/:id/toggle_hide(.:format) forem/admin/topics#toggle_hide
# toggle_lock_admin_forum_topic PUT    /admin/forums/:forum_id/topics/:id/toggle_lock(.:format) forem/admin/topics#toggle_lock
#  toggle_pin_admin_forum_topic PUT    /admin/forums/:forum_id/topics/:id/toggle_pin(.:format)  forem/admin/topics#toggle_pin
#            admin_forum_topics GET    /admin/forums/:forum_id/topics(.:format)                 forem/admin/topics#index
#                               POST   /admin/forums/:forum_id/topics(.:format)                 forem/admin/topics#create
#         new_admin_forum_topic GET    /admin/forums/:forum_id/topics/new(.:format)             forem/admin/topics#new
#        edit_admin_forum_topic GET    /admin/forums/:forum_id/topics/:id/edit(.:format)        forem/admin/topics#edit
#             admin_forum_topic GET    /admin/forums/:forum_id/topics/:id(.:format)             forem/admin/topics#show
#                               PATCH  /admin/forums/:forum_id/topics/:id(.:format)             forem/admin/topics#update
#                               PUT    /admin/forums/:forum_id/topics/:id(.:format)             forem/admin/topics#update
#                               DELETE /admin/forums/:forum_id/topics/:id(.:format)             forem/admin/topics#destroy
#                  admin_forums GET    /admin/forums(.:format)                                  forem/admin/forums#index
#                               POST   /admin/forums(.:format)                                  forem/admin/forums#create
#               new_admin_forum GET    /admin/forums/new(.:format)                              forem/admin/forums#new
#              edit_admin_forum GET    /admin/forums/:id/edit(.:format)                         forem/admin/forums#edit
#                   admin_forum GET    /admin/forums/:id(.:format)                              forem/admin/forums#show
#                               PATCH  /admin/forums/:id(.:format)                              forem/admin/forums#update
#                               PUT    /admin/forums/:id(.:format)                              forem/admin/forums#update
#                               DELETE /admin/forums/:id(.:format)                              forem/admin/forums#destroy
#              admin_categories GET    /admin/categories(.:format)                              forem/admin/categories#index
#                               POST   /admin/categories(.:format)                              forem/admin/categories#create
#            new_admin_category GET    /admin/categories/new(.:format)                          forem/admin/categories#new
#           edit_admin_category GET    /admin/categories/:id/edit(.:format)                     forem/admin/categories#edit
#                admin_category GET    /admin/categories/:id(.:format)                          forem/admin/categories#show
#                               PATCH  /admin/categories/:id(.:format)                          forem/admin/categories#update
#                               PUT    /admin/categories/:id(.:format)                          forem/admin/categories#update
#                               DELETE /admin/categories/:id(.:format)                          forem/admin/categories#destroy
#       admin_user_autocomplete GET    /admin/users/autocomplete(.:format)                      forem/admin/users#autocomplete
#         forum_moderator_tools GET    /:forum_id/moderation(.:format)                          forem/moderation#index
#          forum_moderate_posts PUT    /:forum_id/moderate/posts(.:format)                      forem/moderation#posts
#          moderate_forum_topic PUT    /:forum_id/topics/:topic_id/moderate(.:format)           forem/moderation#topic
#             forum_topic_posts GET    /:forum_id/topics/:topic_id/posts(.:format)              forem/posts#index
#                               POST   /:forum_id/topics/:topic_id/posts(.:format)              forem/posts#create
#          new_forum_topic_post GET    /:forum_id/topics/:topic_id/posts/new(.:format)          forem/posts#new
#         edit_forum_topic_post GET    /:forum_id/topics/:topic_id/posts/:id/edit(.:format)     forem/posts#edit
#              forum_topic_post GET    /:forum_id/topics/:topic_id/posts/:id(.:format)          forem/posts#show
#                               PATCH  /:forum_id/topics/:topic_id/posts/:id(.:format)          forem/posts#update
#                               PUT    /:forum_id/topics/:topic_id/posts/:id(.:format)          forem/posts#update
#                               DELETE /:forum_id/topics/:topic_id/posts/:id(.:format)          forem/posts#destroy
#         subscribe_forum_topic POST   /:forum_id/topics/:id/subscribe(.:format)                forem/topics#subscribe
#       unsubscribe_forum_topic POST   /:forum_id/topics/:id/unsubscribe(.:format)              forem/topics#unsubscribe
#                  forum_topics GET    /:forum_id/topics(.:format)                              forem/topics#index
#                               POST   /:forum_id/topics(.:format)                              forem/topics#create
#               new_forum_topic GET    /:forum_id/topics/new(.:format)                          forem/topics#new
#              edit_forum_topic GET    /:forum_id/topics/:id/edit(.:format)                     forem/topics#edit
#                   forum_topic GET    /:forum_id/topics/:id(.:format)                          forem/topics#show
#                               PATCH  /:forum_id/topics/:id(.:format)                          forem/topics#update
#                               PUT    /:forum_id/topics/:id(.:format)                          forem/topics#update
#                               DELETE /:forum_id/topics/:id(.:format)                          forem/topics#destroy
#                        forums GET    /                                                        forem/forums#index
#                         forum GET    /:id(.:format)                                           forem/forums#show
