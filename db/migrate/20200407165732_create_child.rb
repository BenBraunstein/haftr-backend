class CreateChild < ActiveRecord::Migration[6.0]
  def change
    create_table :children do |t|
      t.string :name
      t.string :currentGradeOrYearGraduated
      t.belongs_to :alumni, null: false, foreign_key: true
    end
  end
end
