class User < ActiveRecord::Base
    has_many :dreams
    validates :username, :email, :password, presence: true
end