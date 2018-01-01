class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string  :name
      t.string  :reputation
      t.string  :country
      t.string  :league
      t.integer :division
    end
  end
end
