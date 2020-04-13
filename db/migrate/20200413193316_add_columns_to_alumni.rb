class AddColumnsToAlumni < ActiveRecord::Migration[6.0]
  def change    
    add_column :alumnis, :hiliDayYears, :string
    add_column :alumnis, :hiliDaySpecialty, :string
    add_column :alumnis, :hiliWhiteYears, :string
    add_column :alumnis, :hiliWhiteSpecialty, :string
    add_column :alumnis, :hiliInternationalYears, :string
    add_column :alumnis, :hiliInternationalSpecialty, :string
    
    add_column :alumnis, :hiliDayAttended, :boolean
    add_column :alumnis, :hiliDayCamper, :boolean
    add_column :alumnis, :hiliDayCounselor, :boolean
    add_column :alumnis, :hiliWhiteAttended, :boolean
    add_column :alumnis, :hiliWhiteCamper, :boolean
    add_column :alumnis, :hiliWhiteCounselor, :boolean
    add_column :alumnis, :hiliInternationalAttended, :boolean
    add_column :alumnis, :hiliInternationalCamper, :boolean
    add_column :alumnis, :hiliInternationalCounselor, :boolean

  end
end
