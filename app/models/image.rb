class Image < ActiveRecord::Base
  validates :url, :place_id, presence: true

  belongs_to :place
end
