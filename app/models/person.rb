class Person < ApplicationRecord
    has_many :rentals
    has_many :puppies

    validates :username, :email, :age, presence: true

    validates :username, :email, uniqueness: true
end
