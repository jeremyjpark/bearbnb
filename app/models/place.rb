# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  price      :decimal(7, 2)    not null
#  utilities  :decimal(7, 2)
#  deposit    :decimal(7, 2)
#  preference :string(255)      not null
#  start_date :date             not null
#  end_date   :date
#  laundry    :string(255)      not null
#  agreement  :string(255)      not null
#  email      :string(255)
#  phonenum   :string(255)
#  desc       :string(255)      not null
#  address    :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#  room       :string(255)
#  user_id    :integer          not null
#  image_urls :string(255)
#  latitude   :float
#  longitude  :float
#

class Place < ActiveRecord::Base
  validates :title, :price, :preference, :start_date, :laundry, :agreement, :desc, :address, :user_id, presence: true
  
  geocoded_by :address

  after_validation :geocode


  belongs_to(
    :user,
    class_name: "User"
  )
end
