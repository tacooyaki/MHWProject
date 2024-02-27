class WeaponsController < ApplicationController
  def index
    if params[:search].present?
      @weapons = Weapon.where("name LIKE ?", "%#{params[:search]}%").page(params[:page]).per(25) # Adjust if need be
    else
      @weapons = Weapon.page(params[:page]).per(25)
    end
  end

  def show
    @weapon = Weapon.find(params[:id])
  end
end
