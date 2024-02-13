class CreateCraftingMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :crafting_materials do |t|
      t.string :name

      t.timestamps
    end
  end
end
