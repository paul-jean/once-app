class Hello < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :greeting, presence: true
end