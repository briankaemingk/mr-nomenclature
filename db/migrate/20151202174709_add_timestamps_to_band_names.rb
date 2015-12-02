class AddTimestampsToBandNames < ActiveRecord::Migration
  def change
    add_timestamps :band_names
  end
end
