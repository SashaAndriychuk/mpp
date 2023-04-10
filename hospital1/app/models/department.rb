class Department < ApplicationRecord
  belongs_to :clinic
  has_many :doctors
  def self.add
    for i in(1..100)
      input = Department.new(id: i, depart: "depart #{i.to_s}",clinic_id: Clinic.find(i).id)
      input.save
    end
  end
end
