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
  validates :password_digest, presence: { message: "Password can't be blank." }

  before_validation :ensure_session_token

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

  def is_password?(maybe_password)
    BCrypt::Password.new(self.password_digest).is_password?(maybe_password)
  end

  def password=(new_pw)
    @password = new_pw
    self.password_digest = BCrypt::Password.create(new_pw)
  end

  private

  def ensure_session_token
    self.session_token ||= self.class.generate_session_token
  end

end
