class AddColumnToBooking < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :activity, :string
  end
end
