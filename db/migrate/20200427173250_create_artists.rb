class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :img_url
      t.string :spotify_id

      t.timestamps
    end
  end
end
