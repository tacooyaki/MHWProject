class AddSerializedFieldsToArmors < ActiveRecord::Migration[7.1]
  def change
    add_column :armors, :resistances, :text
  end
end
