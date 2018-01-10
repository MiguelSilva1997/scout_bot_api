class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :uid
      t.string  :token
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :password_digest
      t.string  :phone_number
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
