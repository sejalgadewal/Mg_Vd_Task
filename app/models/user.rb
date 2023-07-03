class User < ApplicationRecord
    has_many :orders
    # validates_associated :orders
    validates :username, uniqueness:true
end
