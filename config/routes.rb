ActionController::Routing::Routes.draw do |map|
  map.resources :courses

  map.resources :students

  map.resources :depts #, :has_many => [:teachers, :students]

  map.resources :teachers

  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route

  map.resource :account, :controller => "users"
  map.resources :users

  map.login 'login', :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
end
