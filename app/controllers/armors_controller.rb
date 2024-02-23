class ArmorsController < ApplicationController
  def index
    @armors = Armor.all
  end

  def show
    @armor = Armor.find(params[:id])
    @armor = Armor.includes(armor_crafting_materials: :crafting_material).find(params[:id])
  end

end
