class ChangeSlotsAndSkillsToTextInArmors < ActiveRecord::Migration[7.0]
  def change
    change_column :armors, :slots, :text, if_exists: true
    change_column :armors, :skills, :text, if_exists: true
  end
end
