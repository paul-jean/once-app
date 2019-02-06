class Hello < ApplicationRecord
    validates :greeting, presence: true, uniqueness: true
end