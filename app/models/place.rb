class Place < ActiveRecord::Base
  validates :title, :price, :preference, :start_date, :laundry, :agreement, :desc, :address, presence: true

  belongs_to :user
end
