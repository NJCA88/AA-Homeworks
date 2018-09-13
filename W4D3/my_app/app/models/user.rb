class User < ApplicationRecord
  validates :username, :session_token, presence: true
  validates :password_digest, presence: {message: 'Password cant be blank'}
  validates :password, length:{ minimum: 6, allow_nil: true}
  before_validation :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by(username)
    return user if user && Bcrypt::Password.new(user.password).is_password?(password)
    nil
  end

  def generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.session_token=User.generate_session_token
    self.save!
  end

  def ensure_session_token
    self.session_token ||= User.generate_session_token
  end

  def password=
  end


end
