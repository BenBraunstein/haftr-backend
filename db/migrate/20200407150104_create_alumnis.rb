class CreateAlumnis < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnis do |t|
      t.string :firstName
      t.string :lastName
      t.string :middleName
      t.string :marriedName
      t.string :motherName
      t.string :fatherName
      t.string :currentAddress
      t.string :homePhone
      t.string :cellPhone
      t.string :workPhone
      t.string :emailAddress
      t.string :lastYearAttended
      t.string :israelSchool
      t.string :collegeAttended
      t.string :gradSchool
      t.string :profession
      t.string :hillelDayYears
      t.string :hillelSleepYears
      t.string :hillelDaySpecialty
      t.string :hillelSleepSpecialty
      
      t.date :birthday

      t.string :clubs
      t.string :sportsTeams
      t.string :cheerleading
      t.string :awards
      t.string :committees
      t.string :oldAddresses

      t.boolean :hili
      t.boolean :hillel
      t.boolean :haftr
      t.boolean :hillelDayAttended
      t.boolean :hillelDayCamper
      t.boolean :hillelDayCounselor
      t.boolean :hillelSleepAttended
      t.boolean :hillelSleepCamper
      t.boolean :hillelSleepCounselor
      t.boolean :parentOfStudent
      t.boolean :classParent
      t.boolean :boardTrustee
      t.boolean :boardEducation
      t.boolean :alumniNewsletters
      t.boolean :commsOutreach
      t.boolean :classReunions
      t.boolean :alumniEvents
      t.boolean :fundraisingNetworking
      t.boolean :databaseResearch
      t.boolean :alumniChoir

      t.timestamps
    end
  end
end
