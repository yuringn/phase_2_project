class Person < ApplicationRecord
    has_many :rentals
    has_many :puppies
end
