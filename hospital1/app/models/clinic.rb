class Clinic < ApplicationRecord
  has_many :departments
  has_many :pacient_cards
  def self.add
    for i in(1..100)
      sql = "INSERT INTO clinics VALUES (#{i}, 'name #{i.to_s}', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(sql)
    end
  end
end
