class CreateScoutProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :scout_profiles do |t|
      t.string :country
      t.integer :reputation
      t.boolean :availability, :default => false
      t.belongs_to :user, index: { unique: true }, foreign_key: true

      t.timestamps
    end
  end
end
