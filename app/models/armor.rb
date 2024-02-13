class Armor < ApplicationRecord
  has_and_belongs_to_many :crafting_materials, join_table: "armors_crafting_materials"

  validates :name, presence: true, uniqueness: true
  validates :type, presence: true
  validates :defense, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
