class CreatePlayerProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :player_profiles do |t|
      t.string :club
      t.integer :height
      t.integer :weight
      t.string :dominant_foot
      t.integer :age
      t.string :country
      t.string :primary_position
      t.string :secondary_position
      t.integer :rating
      t.belongs_to :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
