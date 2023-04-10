class Doctor < ApplicationRecord
  belongs_to :department
  belongs_to :special
  def self.add
    for i in(1..100)
      input = Doctor.new(id: i, fio: "fio #{i.to_s}",special_id: Special.find(i).id, department_id: Department.find(i).id)
      input.save
    end
  end
end
