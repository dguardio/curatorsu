class AccessPolicy
  include AccessGranted::Policy

  def configure
    # Example policy for AccessGranted.
    # For more details check the README at
    #
    # https://github.com/chaps-io/access-granted/blob/master/README.md
    #
    # Roles inherit from less important roles, so:
    # - :admin has permissions defined in :member, :guest and himself
    # - :member has permissions from :guest and himself
    # - :guest has only its own permissions since it's the first role.
    #
    # The most important role should be at the top.
    # In this case an administrator.
    #
    # role :admin, proc { |user| user.admin? } do
    #   can :destroy, User
    # end

    # More privileged role, applies to registered users.
    #
    role :curator, proc { |user| user.curator? } do
      can :create, Course
      can :create, Mod
      can [:update, :destroy], Course do |course, user|
        course.curator == user
      end
    end

    role :curatorx, proc { |user| user.curatorx? } do
      can :create, Course
      can :create, Mod
      can [:update, :destroy], Course do |course, user|
        course.curatorx == user
      end
    end

    # The base role with no additional conditions.
    # Applies to every user.
    #
    role :user do
      can :read, Course
      can :read, Mod
      can :read, User do |user|
        user == User.find(@user)
        end
    end
  end
end
