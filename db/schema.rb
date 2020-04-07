# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_07_150104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnis", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "middleName"
    t.string "marriedName"
    t.string "motherName"
    t.string "fatherName"
    t.string "currentAddress"
    t.string "homePhone"
    t.string "cellPhone"
    t.string "workPhone"
    t.string "emailAddress"
    t.string "lastYearAttended"
    t.string "israelSchool"
    t.string "collegeAttended"
    t.string "gradSchool"
    t.string "profession"
    t.string "hillelDayYears"
    t.string "hillelSleepYears"
    t.string "hillelDaySpecialty"
    t.string "hillelSleepSpecialty"
    t.date "birthday"
    t.string "clubs", default: ""
    t.string "sportsTeams", default: ""
    t.string "cheerleading", default: ""
    t.string "awards", default: ""
    t.string "committees", default: ""
    t.string "oldAddresses", default: ""
    t.boolean "hili"
    t.boolean "hillel"
    t.boolean "haftr"
    t.boolean "hillelDayAttended"
    t.boolean "hillelDayCamper"
    t.boolean "hillelDayCounselor"
    t.boolean "hillelSleepAttended"
    t.boolean "hillelSleepCamper"
    t.boolean "hillelSleepCounselor"
    t.boolean "parentOfStudent"
    t.boolean "classParent"
    t.boolean "boardTrustee"
    t.boolean "boardEducation"
    t.boolean "alumniNewsletters"
    t.boolean "commsOutreach"
    t.boolean "classReunions"
    t.boolean "alumniEvents"
    t.boolean "fundraisingNetworking"
    t.boolean "databaseResearch"
    t.boolean "alumniChoir"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
