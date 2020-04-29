class AddColumnsToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :img_url, :string
    add_column :events, :date, :string
    add_column :events, :google_key, :string
    add_column :events, :url, :string
  end
end
