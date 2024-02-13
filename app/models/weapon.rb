class Weapon < ApplicationRecord
  has_and_belongs_to_many :crafting_materials, join_table: "crafting_materials_weapons"

  validates :name, :type, :attack_power, presence: true
  validates :attack_power, numericality: { only_integer: true, greater_than: 0 }
  validates :type, inclusion: { in: %w[sword bow gun lance axe hammer] }
end