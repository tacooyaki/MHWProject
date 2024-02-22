class RemoveSharpnessFromWeapons < ActiveRecord::Migration[7.1]
  def change
    remove_column :weapons, :sharpness, :string
  end
end
