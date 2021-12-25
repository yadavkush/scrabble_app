class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.bigint :score
      t.datetime :date
      t.references :member, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
