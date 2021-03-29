class Rental < ApplicationRecord
    belongs_to :puppy
    belongs_to :person
end
