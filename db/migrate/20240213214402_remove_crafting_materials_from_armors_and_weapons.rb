class RemoveCraftingMaterialsFromArmorsAndWeapons < ActiveRecord::Migration[7.1]
  def change
    remove_column :armors, :crafting_materials, :text
    remove_column :weapons, :crafting_materials, :text
  end
end
