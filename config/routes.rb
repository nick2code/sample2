ActionController::Routing::Routes.draw do |map|
  
  map.namespace :admin do |admin|
    admin.resources :depts
  end
  map.resources :courses

  map.resources :students

  map.resources :depts #, :has_many => [:teachers, :students]

  map.resources :teachers

  map.resource :user_session
  map.root :courses

  map.resource :account, :controller => "users"
  map.resources :users

  map.login 'login', :controller => "user_sessions", :action => "new"
  map.logout 'logout', :controller => "user_sessions", :action => "destroy"
end
