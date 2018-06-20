class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
        t.string :title
        t.date :date
        t.time :start_time
        t.time :end_time
        t.text :description
        t.timestamps
    end
  end
end
