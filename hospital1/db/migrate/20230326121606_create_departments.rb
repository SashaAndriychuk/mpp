class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :depart
      t.belongs_to :clinic, index:true, foreign_key:true
      t.timestamps
    end
  end
end
