class RemoveTimestampsFromBandNames < ActiveRecord::Migration
  def change
    remove_timestamps :band_names
  end
end
