# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  session_token   :string(255)
#  place_id        :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
