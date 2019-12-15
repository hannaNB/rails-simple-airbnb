class Flat < ApplicationRecord
    validates :name, uniqueness: true, presence: true
    validates :address, presence: true
    validates :description, uniqueness: true, presence: true
    validates :number_of_guests, inclusion: { in: [1,2,3,4,5,6,7,8,9,10,11], allow_nil: false}
end

# validates :name, exclusion: { in: %w(admin administrator owner) }