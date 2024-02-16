class WeaponsController < ApplicationController
  def index
    @armors = Weapon.all
  end

end
