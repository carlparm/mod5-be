class RemoveLocationIdFromEvents < ActiveRecord::Migration[6.0]
  def change

    remove_column :events, :location_id, :string
  end
end
