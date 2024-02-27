class CraftingMaterialsController < ApplicationController
  def index
    @crafting_materials = CraftingMaterial.page(params[:page]).per(25) # Adjust if need be
  end

  def show
    @crafting_material = CraftingMaterial.find(params[:id])

    @armors = @crafting_material.armors
    @weapons = @crafting_material.weapons
  end
end
