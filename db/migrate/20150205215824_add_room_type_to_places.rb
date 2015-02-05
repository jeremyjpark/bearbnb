class AddRoomTypeToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :room_type, :string, null: false
  end
end
