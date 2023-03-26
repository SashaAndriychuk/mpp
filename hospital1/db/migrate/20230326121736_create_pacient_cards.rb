class CreatePacientCards < ActiveRecord::Migration[7.0]
  def change
    create_table :pacient_cards do |t|
      t.belongs_to :clinic, index:true, foreign_key:true
      t.belongs_to :pacient, index:true, foreign_key:true
      t.timestamps
    end
  end
end
