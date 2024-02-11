class Weapon < ApplicationRecord
  serialize :crafting_materials, JSON
end