class CreateJoinTableWeaponCraftingMaterials < ActiveRecord::Migration[7.1]
  def change
    create_table :weapon_crafting_materials do |t|
      t.belongs_to :weapon, foreign_key: true
      t.belongs_to :crafting_material, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
