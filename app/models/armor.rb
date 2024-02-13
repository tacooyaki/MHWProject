class Armor < ApplicationRecord
  has_and_belongs_to_many :crafting_materials, join_table: "armors_crafting_materials"
end