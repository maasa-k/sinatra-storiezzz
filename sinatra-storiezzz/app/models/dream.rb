class Dream < ActiveRecord::Base
    belongs_to :user
    validates :description, :category, presence: true
end 