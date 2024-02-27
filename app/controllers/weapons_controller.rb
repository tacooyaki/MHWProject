class WeaponsController < ApplicationController
  def index
    @types = ['all', 'great-sword', 'long-sword', 'sword-and-shield', 'dual-blades', 'hammer', 'hunting-horn', 'lance', 'gunlance', 'switch-axe', 'charge-blade', 'insect-glaive', 'light-bowgun', 'heavy-bowgun', 'bow']

    # If you want to filter by weapon type
    if params[:type].present? && params[:type] != 'all'
      filtered_weapons = Weapon.where("type = ?", params[:type])
    else
      filtered_weapons = Weapon.all
    end

    # For search functionality of all weapons
    if params[:search].present?
      search_term = params[:search].downcase
      @weapons = filtered_weapons.where("LOWER(name) LIKE ?", "%#{search_term}%").page(params[:page]).per(25)
    else
      @weapons = filtered_weapons.page(params[:page]).per(25)
    end
  end

  def show
    @weapon = Weapon.find(params[:id])
  end
end
