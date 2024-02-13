class CreateWeaponCraftingMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :weapon_crafting_materials do |t|
      t.integer :quantity
      t.references :weapon, null: false, foreign_key: true
      t.references :crafting_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
