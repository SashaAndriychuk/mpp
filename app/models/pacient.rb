class Pacient < ApplicationRecord
  has_one :pacient_card
  validates :fio, presence: true
  def self.add
    for i in(1..100)
      sql = "INSERT INTO pacients VALUES (#{i}, 'fio #{i.to_s}', NOW(), NOW(), '2010-05-01')"
      ActiveRecord::Base.connection.execute(sql)
    end
  end

end
