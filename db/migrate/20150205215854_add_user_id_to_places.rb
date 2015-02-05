class AddUserIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :user_id, :integer, null: false
  end
end
