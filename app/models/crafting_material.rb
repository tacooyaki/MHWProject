class CraftingMaterial < ApplicationRecord
  has_and_belongs_to_many :armors, join_table: "armors_crafting_materials"
  has_and_belongs_to_many :weapons, join_table: "crafting_materials_weapons"
end