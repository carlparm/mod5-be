class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :spotify_id
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
