class BowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
      create?
    end

    def create?
      return true
    end

    def index?
      return true
    end

    def destroy?
      record.user == user
    end

    def update?
      record.user == user
    end
  end
end
