class Message < ApplicationRecord
    validates :body, presence: true,length:{minimum: 5,maximum: 250}
    validates :user, presence: true
    belongs_to :user
end
