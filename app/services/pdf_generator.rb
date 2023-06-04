class PdfGenerator

  def self.all_pdf
    Prawn::Document.new do
      text "Clinics", align: :center
      Clinic.all.each do |clinic|
        text "#{clinic.id}. #{clinic.name} (#{clinic.date_create}) - #{clinic.types} #{clinic.city} #{clinic.rating}"
      end

      start_new_page

      text "Pacients", align: :center
      Pacient.all.each do |pacient|
        text "#{pacient.id}. #{pacient.fio} (#{pacient.birth}) - clinic №#{pacient.pacient_card.clinic_id}"
      end
    end.render
  end

  def self.clinic_pdf(id)
    Prawn::Document.new do
      clinic = Clinic.find(id)

      fill_color '0000ff'
      stroke_color '000000'
      text_rendering_mode(:fill_stroke) do
        text "#{clinic.id}. #{clinic.name}", align: :center, size: 30
      end
      move_down 20
      fill_color '000000'
      text "Date create: #{clinic.date_create}"
      text "Type: #{clinic.types}"
      text "City: #{clinic.city}"
      text "Rating: #{clinic.rating}"
      image "app/assets/images/hospital.png", width: 300, align: :center
    end.render
  end

  def self.pacient_pdf(id)
    Prawn::Document.new do
      pacient = Pacient.find(id)

      fill_color '0000ff'
      stroke_color '000000'
      text_rendering_mode(:fill_stroke) do
        text "#{pacient.id}. #{pacient.fio}", align: :center, size: 24
      end
      move_down 20
      fill_color '000000'
      text "Birthday: #{pacient.birth}"
    end.render
  end
end