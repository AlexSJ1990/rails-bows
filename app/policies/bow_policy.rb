class BowPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
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

    def edit?
      update?
    end

    def destroy?
      record.user == user
    end

    def update?
      record.user == user
    end
end
