class AddImageUrlsToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :image_urls, :string
  end
end
