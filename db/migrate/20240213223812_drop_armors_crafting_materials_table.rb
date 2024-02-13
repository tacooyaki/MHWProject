class DropArmorsCraftingMaterialsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :armors_crafting_materials
  end
end