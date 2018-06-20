class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :company_website
      t.string :email
      t.string :linkedin

      t.timestamps
    end
  end
end
