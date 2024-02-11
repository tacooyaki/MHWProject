class CreateArmors < ActiveRecord::Migration[6.0]
  def change
    create_table :armors do |t|
      t.string :name
      t.string :type
      t.string :rank
      t.string :image_male
      t.string :image_female
      t.integer :defense
      t.string :resistance
      t.text :skills
      t.integer :slots

      t.timestamps
    end
  end
end
