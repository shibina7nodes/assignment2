class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :goals
      t.date :start_date
      t.date :last_date
      t.timestamps
      t.belongs_to :student, index: true
    end
  end
end
