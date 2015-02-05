class FixRoomTypeName < ActiveRecord::Migration
  def change
    rename_column :places, :room_type, :room
  end
end
