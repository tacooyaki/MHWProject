class Weapon < ApplicationRecord
  # Added for debugging
  self.inheritance_column = :_type_disabled

  has_many :weapon_crafting_materials
  has_many :crafting_materials, through: :weapon_crafting_materials

  validates :name, :type, :attack_power, presence: true
  validates :attack_power, numericality: { only_integer: true, greater_than: 0 }
  validates :type, inclusion: { in: %w[great-sword long-sword sword-and-shield dual-blades hammer hunting-horn lance gunlance switch-axe charge-blade insect-glaive light-bowgun heavy-bowgun bow] }
end