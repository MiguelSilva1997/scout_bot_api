class CreateScoutProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :scout_profiles do |t|
      t.string :country
      t.integer :reputation
      t.boolean :availability, :default => false
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
