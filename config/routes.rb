AsciiArchSerwInt::Application.routes.draw do

	match 'login', :controller => 'user_sessions', :action => 'new', :as => 'login'
	
	match 'logout', :controller => 'user_sessions', :action => 'destroy', :as => 'logout'
	
	resources :user_sessions
  resources :categories
	
	resources :users do
		match 'execute', :controller => 'users', :action => 'execute', :as => 'execute'
		match 'orderexecute', :controller => 'users', :action => 'orderexecute', :as => "orderexecute"
	end
	
	resources :products do
		match 'add', :controller => 'users', :action => 'add', :as => 'add'
		match 'removeproduct', :controller => 'users', :action => 'removeproduct', :as => 'removeproduct'
	end
	
	root :to => 'products#index'
end
