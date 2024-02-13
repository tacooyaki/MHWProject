class CreateArmorCraftingMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :armor_crafting_materials do |t|
      t.integer :quantity
      t.references :armor, null: false, foreign_key: true
      t.references :crafting_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
