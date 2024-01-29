class BiotopPolicy < ApplicationPolicy

  def new?
    true
  end

  def create?
    update?
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user || user&.admin?
  end
end
