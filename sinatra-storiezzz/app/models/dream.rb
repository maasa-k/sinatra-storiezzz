class Dream < ActiveRecord::Base
    belongs_to :user
    validates :post, :category, presence: true
end 