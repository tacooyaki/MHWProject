class CreateArmorCraftingMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :armor_crafting_materials do |t|
      t.belongs_to :armor, foreign_key: true, index: true
      t.belongs_to :crafting_material, foreign_key: true, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
