class Movie < ApplicationRecord
    has_many :users, dependent: :destory
end
