AsciiArchSerwInt::Application.routes.draw do |map|

	map.login 'login', :controller => 'user_sessions', :action => 'new'
	
	map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
	
	map.resources :user_sessions
  map.resources :categories
  map.resources :products
	map.resources :users
  
  map.root :products
end
