class Weapon < ApplicationRecord
  has_and_belongs_to_many :crafting_materials, join_table: "crafting_materials_weapons"
end