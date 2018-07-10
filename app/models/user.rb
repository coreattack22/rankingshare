class User < ApplicationRecord
  has_many :answer
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable, 
         omniauth_providers: %i(twitter)

  def self.create_unique_string
    SecureRandom.uuid
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource = nil)
    user = User.find_by(provider: auth.provider, uid: auth.uid)
    unless user
      user = User.new(provider: auth.provider,
                      uid:      auth.uid,
                      email:    "#{auth.uid}-#{auth.provider}@example.com",
                      password: Devise.friendly_token[0, 20],
                      image:    auth.info.image,
                      name:     auth.info.name,
                      nickname: auth.info.nickname
      )
    end
    user.save
    user
  end

end
