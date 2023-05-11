class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :fio
      t.belongs_to :special, index:true, foreign_key:true
      t.belongs_to :department, index:true, foreign_key:true
      t.timestamps
    end
  end
end
