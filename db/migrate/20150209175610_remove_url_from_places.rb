class RemoveUrlFromPlaces < ActiveRecord::Migration
  def change
    remove_column :places, :filepicker_url, :string
  end
end
