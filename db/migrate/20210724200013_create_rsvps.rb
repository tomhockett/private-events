class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.references :attendee, null: false, foreign_key: true, index: true
      t.references :attended_event, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
