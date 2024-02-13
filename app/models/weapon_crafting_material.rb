class WeaponCraftingMaterial < ApplicationRecord
  belongs_to :weapon
  belongs_to :crafting_material

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
