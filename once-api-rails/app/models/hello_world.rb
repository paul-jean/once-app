class HelloWorld < ApplicationRecord
    validates :greeting, presence: true, uniqueness: true
end