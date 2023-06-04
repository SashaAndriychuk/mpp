desc "Parse site"
task :parse => [ :environment ] do
  require 'nokogiri'
  require 'open-uri'

  doc = Nokogiri::HTML(URI.open('https://www.hospitalsafetygrade.org/all-hospitals').read)

  doc.xpath('//div[@id="BlinkDBContent_849210"]/ul').each do |link|
    link.content.split("\n").each do |clinic|
      Clinic.new(name: clinic).save
    end
  end
end