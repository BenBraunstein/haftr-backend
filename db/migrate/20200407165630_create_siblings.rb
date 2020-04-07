class CreateSiblings < ActiveRecord::Migration[6.0]
  def change
    create_table :siblings do |t|
      t.string :name
      t.string :yearFinished
      t.string :school
      t.belongs_to :alumni, null: false, foreign_key: true
    end
  end
end
