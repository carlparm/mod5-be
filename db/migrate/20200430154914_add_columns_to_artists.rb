class AddColumnsToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :genre, :string
    add_column :artists, :spotify_uri, :string
    add_column :artists, :popularity, :integer
  end
end
