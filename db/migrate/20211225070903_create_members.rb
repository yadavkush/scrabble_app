class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :contact_number
      t.datetime :joining_date

      t.timestamps
    end
  end
end
