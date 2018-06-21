class CreateEventGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :event_guests do |t|
      t.references :guest, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
