class AddImgUrlToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :img_url, :string
  end
end
