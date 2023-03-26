class PacientCard < ApplicationRecord
  has_one :pacient
  belongs_to :clinic
end
