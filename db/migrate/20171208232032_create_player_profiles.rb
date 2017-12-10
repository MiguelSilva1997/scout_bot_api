class CreatePlayerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :player_profiles do |t|
      t.string :club
      t.string :height
      t.string :weight
      t.string :dominant_foot
      t.string :age
      t.string :country
      t.string :primary_position
      t.string :secondary_position
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
