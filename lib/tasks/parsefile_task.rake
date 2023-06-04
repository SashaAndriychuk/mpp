desc "Parse file"
task :parse_file => [ :environment ] do
  require 'csv'

  doc = CSV.open("hospitals.csv", "r", headers: true).read

  # doc.each do |info|
  #     Clinic.new(name: info["Facility.Name"], types: info["Facility.Type"], city: info["Facility.City"], rating: info["Rating.Mortality"]).save
  # end

  size = doc.length
  step = (size/2).to_i
  a=0
  b=step

  for t in (0..1)
    Thread.new{
      for i in (a..b)
        Clinic.new(name: doc["Facility.Name"][i], types: doc["Facility.Type"][i], city: doc["Facility.City"][i], rating: doc["Rating.Mortality"][i]).save
      end
    }.join

    a=step+1
    b=size-1
  end
end