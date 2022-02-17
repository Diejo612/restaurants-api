class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    true
  end

  def create?
    true
  end

  def destroy?
    true
  end
end

# curl -i -X POST                                       \
#        -H 'Content-Type: application/json'              \
#        -H 'X-User-Email: holamundo@gmail.com'               \
#        -H 'X-User-Token: c2AzzdC7Ch-xX9koJvmC'          \
#        -d '{ "restaurant": { "name": "Bel's Chicken", "address": "Lurigancho City" } }'    \
#        http://localhost:3000/api/v1/restaurants

# curl -i -X DELETE                               \
#      -H 'X-User-Email: holamundo@gmail.com'         \
#      -H 'X-User-Token: c2AzzdC7Ch-xX9koJvmC'    \
#      http://localhost:3000/api/v1/restaurants/2
