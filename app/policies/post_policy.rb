class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user_admin?
  end

  def update?
    user_admin?
  end

  def destroy?
    user_admin?
  end


  private

  def user_admin?
    user.admin
  end
end
