class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.page(params[:page]).per(25) # Adjust if need be
  end

  def show
    @weapon = Weapon.find(params[:id])
  end
end
