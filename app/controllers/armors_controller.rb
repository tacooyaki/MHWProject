class ArmorsController < ApplicationController
  def index
    @armors = Armor.all
  end

  def show
    @armor = Armor.find(params[:id])
  end

end
