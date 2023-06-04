class NewColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :date_create, :date
    add_column :pacients, :birth, :date
    add_column :pacient_cards, :card_number, :string
  end
end
