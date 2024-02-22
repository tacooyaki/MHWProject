class AddDurabilityToWeapons < ActiveRecord::Migration[7.1]
  def change
    add_column :weapons, :durability, :text
  end
end
