class AddDoctorsToPacientCard < ActiveRecord::Migration[7.0]
  def change
    add_belongs_to :pacient_cards, :doctors, index:true, foreign_key:true
  end
end
