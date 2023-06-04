class NewColumnsToClinics < ActiveRecord::Migration[7.0]
  def change
    add_column :clinics, :types, :string
    add_column :clinics, :city, :string
    add_column :clinics, :rating, :string
  end
end
