class Weapon < ApplicationRecord
  has_many :weapon_crafting_materials
  has_many :crafting_materials, through: :weapon_crafting_materials

  validates :name, :type, :attack_power, presence: true
  validates :attack_power, numericality: { only_integer: true, greater_than: 0 }
  validates :type, inclusion: { in: %w[sword bow gun lance axe hammer] }
end