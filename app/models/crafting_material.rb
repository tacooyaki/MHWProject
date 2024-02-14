class CraftingMaterial < ApplicationRecord
  has_many :armor_crafting_materials
  has_many :armors, through: :armor_crafting_materials

  has_many :weapon_crafting_materials
  has_many :weapons, through: :weapon_crafting_materials

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end