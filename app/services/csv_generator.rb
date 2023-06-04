class CsvGenerator
  require 'csv'

  def self.all_csv
    CSV.generate do |csv|
      csv << %w[clinic_id name date_create types city rating]
      Clinic.all.each do |clinic|
        csv << [clinic.id, clinic.name, clinic.date_create, clinic.types, clinic.city, clinic.rating]
      end

      csv << %w[patient_id fio birthday clinic_id]
      Pacient.all.each do |pacient|
        csv << [pacient.id, pacient.fio, pacient.birth, pacient.pacient_card.clinic_id]
      end
    end
  end
end