class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new 

    if user.superadmin?
      can :manage, :all 

    elsif user.admin?

      can :manage, ActiveAdmin::Page, name: "Order"
      can :manage, ActiveAdmin::Page, name: "Product"
      can :manage, ActiveAdmin::Page, name: "Business"
      

      cannot :read, ActiveAdmin::Page, name: "Dashboard"

    elsif user.seller? || user.user?
      
      can :read, :home
      can :manage, :Order

    else
      can :read, :home
    end
  end
end
