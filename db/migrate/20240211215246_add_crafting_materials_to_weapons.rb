class AddCraftingMaterialsToWeapons < ActiveRecord::Migration[7.1]
  def change
    add_column :weapons, :crafting_materials, :text
  end
end
