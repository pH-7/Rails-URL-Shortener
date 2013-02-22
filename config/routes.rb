Shorturl::Application.routes.draw do
  get 'contact/index'
  root :controller => 'urls', :action => 'all'
  resources :urls, :only => [:show, :new, :create]
end
