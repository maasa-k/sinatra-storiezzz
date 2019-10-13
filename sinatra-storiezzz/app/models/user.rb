class User < ActiveRecord::Base
    has_many :dreams
    validates :username, :email, presence: true, uniqueness: true
    has_secure_password
end