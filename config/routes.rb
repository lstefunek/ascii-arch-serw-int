AsciiArchSerwInt::Application.routes.draw do |map|

	map.login 'login', :controller => 'user_sessions', :action => 'new'
	
	map.logout 'logout', :controller => 'user_sessions', :action => 'destroy'
	
	map.resources :user_sessions
  map.resources :categories
	map.resources :users
	
	map.resources :products do |m|
		m.add 'add', :controller => 'products', :action => 'add'
	end
	  
  map.root :products
end
