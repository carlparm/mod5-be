class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :ticketmaster_id
      t.string :location
      t.string :location_id

      t.timestamps
    end
  end
end
