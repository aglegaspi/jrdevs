class RenameReferencesOnEventsStudents < ActiveRecord::Migration[5.2]
  def change
  	rename_column :events_students, :students_id, :student_id
  	rename_column :events_students, :events_id, :event_id
  end
end
