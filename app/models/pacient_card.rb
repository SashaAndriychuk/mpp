class PacientCard < ApplicationRecord
  belongs_to :pacient
  belongs_to :clinic
  belongs_to :doctor

  validates :clinic_id, presence: true
  validates :pacient_id, presence: true
  def self.add
    for i in(1..100)
      sql = "INSERT INTO pacient_cards VALUES (#{i}, '#{i}', '#{i}', NOW(), NOW(), 'H-#{i}-H', '#{i}')"
      ActiveRecord::Base.connection.execute(sql)
    end
  end
end
