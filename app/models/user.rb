class User < ApplicationRecord
    validates :username, uniqueness: true,presence: true,length:{minimum: 5,maximum: 15}
    has_secure_password
    has_many :messages
end
