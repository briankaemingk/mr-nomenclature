class AddUserIdToBandNames < ActiveRecord::Migration
  def change
    add_column :band_names, :user_id, :integer
  end
end
