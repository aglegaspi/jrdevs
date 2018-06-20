class CreateEventsStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :events_students do |t|
      t.references :students, foreign_key: true
      t.references :events, foreign_key: true

      t.timestamps
    end
  end
end
