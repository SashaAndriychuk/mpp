class Pacient < ApplicationRecord
  has_one :pacient_card

  def self.add
    for i in(1..100)
      sql = "INSERT INTO pacients VALUES (#{i}, 'fio #{i.to_s}', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(sql)
    end
  end

end
