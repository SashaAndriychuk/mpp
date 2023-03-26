class CreateSpecials < ActiveRecord::Migration[7.0]
  def change
    create_table :specials do |t|
      t.string :special
      t.belongs_to :doctor, index:true, foreign_key:true
      t.timestamps
    end
  end
end
