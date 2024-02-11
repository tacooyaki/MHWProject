class CreateWeapons < ActiveRecord::Migration[6.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.integer :rarity
      t.string :icon
      t.string :image
      t.integer :attack_power
      t.string :element
      t.string :sharpness
      t.integer :affinity
      t.integer :slots

      t.timestamps
    end
  end
end
