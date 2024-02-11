class AddCraftingMaterialsToArmors < ActiveRecord::Migration[7.1]
  def change
    add_column :armors, :crafting_materials, :text
  end
end
