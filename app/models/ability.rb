class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :coordinador
      can :manage, :all
      authorize! :manage, :all  #Aqui le damos autorización al admin de tener acceso a todo.
    elsif user.has_role? :comun
      can :read, all
    elsif user.has_role? :docente
      can :read, User
      can :read, Role
      can :edit, Role
      can :edit, Curso
      can :read, Curso
      can :read, Grupo
      can :edit, Grupo
      can :read, Institucion
      can :read, Sucursal
      can :read, Profesor
      can :edit, Profesor
    else
      can :read, :all
    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
