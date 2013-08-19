class User < ActiveRecord::Base
  before_save {self.username = username.downcase}
  before_create :create_remember_token

  validates :username, length: {maximum: 15}, uniqueness: {case_sensitive: false}, presence: true
  has_secure_password
  validates :password, length: {minimum: 8}


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private
    def create_remember_token
      self.remember_token = User.encrypt(User.new_remember_token)
    end
end
