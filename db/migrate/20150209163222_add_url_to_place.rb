class AddUrlToPlace < ActiveRecord::Migration
  def change
    add_column :places, :filepicker_url, :string
  end
end
