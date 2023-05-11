class PacientCard < ApplicationRecord
  belongs_to :pacient
  belongs_to :clinic
  validates :clinic_id, presence: true
  validates :pacient_id, presence: true
  def self.add
    for i in(1..100)
      input = PacientCard.new(id: i,clinic_id: Clinic.find(i).id, pacient_id: Pacient.find(i).id)
      input.save
    end
  end
end
