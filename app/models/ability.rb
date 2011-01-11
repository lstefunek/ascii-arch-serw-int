class Ability
  include CanCan::Ability

  def initialize(user)
  	user ||= User.new
  	
  	if user.role
  		
  		if user.role == "admin"
  			can :manage, :all
  		else
  			can :read, :all
  			can :add, Product
  		end
  		
  	end
  	
  end
  
end
