class Special < ApplicationRecord
  has_many :doctor

  def self.add
    for i in(1..100)
      sql = "INSERT INTO specials VALUES (#{i}, 'special #{i.to_s}', NOW(), NOW())"
      ActiveRecord::Base.connection.execute(sql)
    end
  end

end
