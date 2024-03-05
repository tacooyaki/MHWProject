class ArmorsController < ApplicationController
  def index
    @types = ['all', 'head', 'chest', 'gloves', 'waist', 'legs']

    # If you want to filter by armor type
    if params[:type].present? && params[:type] != 'all'
      filtered_armors = Armor.where("type = ?", params[:type])
    else
      filtered_armors = Armor.all
    end

    # For search functionality of all armors
    if params[:search].present?
      search_term = params[:search].downcase
      @armors = filtered_armors.where("LOWER(name) LIKE ?", "%#{search_term}%").page(params[:page]).per(25)
    else
      @armors = filtered_armors.page(params[:page]).per(19)
    end
  end

  def show
    @armor = Armor.includes(armor_crafting_materials: :crafting_material).find(params[:id])
  end
end
