class Clinic < ApplicationRecord
  has_many :departments
  has_many :pacient_cards
end
