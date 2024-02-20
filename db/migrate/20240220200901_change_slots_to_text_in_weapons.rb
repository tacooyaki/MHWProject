class ChangeSlotsToTextInWeapons < ActiveRecord::Migration[6.0]
  def change
    change_column :weapons, :slots, :text
  end
end