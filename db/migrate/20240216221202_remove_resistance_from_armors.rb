class RemoveResistanceFromArmors < ActiveRecord::Migration[6.0]
  def change
    remove_column :armors, :resistance, :string
  end
end
