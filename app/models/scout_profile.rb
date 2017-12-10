class ScoutProfile < ApplicationRecord
  t.belongs_to :user, index: { unique: true }, foreign_key: true
end
