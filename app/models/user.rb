class User < ActiveRecord::Base
  #added to customize :username in devise
  attr_accessor :login

  has_many :posts
  has_many :comments

  validates :username, presence: true
  validates :username, uniqueness: true, case_sensitive: false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #added to customize :username in devise
  def self.find_for_database_authentication(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end

end
