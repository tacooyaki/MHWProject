class Armor < ApplicationRecord
  # Added for debugging
  self.inheritance_column = :_type_disabled

  serialize :resistances, JSON
  serialize :slots, JSON
  serialize :skills, JSON

  has_many :armor_crafting_materials
  has_many :crafting_materials, through: :armor_crafting_materials

  validates :name, presence: true, uniqueness: true
  validates :type, presence: true
  validates :defense, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
