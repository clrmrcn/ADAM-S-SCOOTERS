class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def accept?
    record.scooter.user == user
  end

  def decline?
    record.scooter.user == user
  end

  def destroy?
    record.user == user || record.scooter.user == user
  end
end
