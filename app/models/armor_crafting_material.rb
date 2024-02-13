class ArmorCraftingMaterial < ApplicationRecord
  belongs_to :armor
  belongs_to :crafting_material

  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
