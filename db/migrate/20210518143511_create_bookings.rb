class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :tent, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date_book
      t.date :end_date_book

      t.timestamps
    end
  end
end
