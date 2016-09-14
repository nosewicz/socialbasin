Rails.application.routes.draw do
 resources :feeds 
  get 'entries/index'
get 'entries/show'
    root 'entries#index'
    
# This line mounts Monologue's routes at the root of your application.
# This means, any requests to URLs such as /my-post, will go to Monologue::PostsController.
# If you would like to change where this engine is mounted, simply change the :at option to something different.
#
# We ask that you don't use the :as option here, as Monologue relies on it being the default of "monologue"
mount Monologue::Engine, at: '/articles' # or whatever path, be it "/blog" or "/monologue"
end
