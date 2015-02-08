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

require 'bcrypt'

class User < ActiveRecord::Base
  attr_reader :password

  validates :session_token, presence: true
  validates :username, uniqueness: true, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  before_validation :ensure_session_token

  #ADD ASSOCIATIONS
  has_one :place

  def self.find_by_credentials(username, password)
    user_by_un = User.find_by_username(username)
    return nil unless user_by_un
    user_by_un.is_password?(password) ? user_by_un : nil
  end

  def self.generate_session_token
    SecureRandom::urlsafe_base64(32)
  end

  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

end
