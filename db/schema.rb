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

ActiveRecord::Schema.define(version: 2020_06_10_225844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.string "hiliDayYears"
    t.string "hiliDaySpecialty"
    t.string "hiliWhiteYears"
    t.string "hiliWhiteSpecialty"
    t.string "hiliInternationalYears"
    t.string "hiliInternationalSpecialty"
    t.boolean "hiliDayAttended"
    t.boolean "hiliDayCamper"
    t.boolean "hiliDayCounselor"
    t.boolean "hiliWhiteAttended"
    t.boolean "hiliWhiteCamper"
    t.boolean "hiliWhiteCounselor"
    t.boolean "hiliInternationalAttended"
    t.boolean "hiliInternationalCamper"
    t.boolean "hiliInternationalCounselor"
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_alumnis_on_user_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.string "currentGradeOrYearGraduated"
    t.bigint "alumni_id", null: false
    t.index ["alumni_id"], name: "index_children_on_alumni_id"
  end

  create_table "siblings", force: :cascade do |t|
    t.string "name"
    t.string "yearFinished"
    t.string "school"
    t.bigint "alumni_id", null: false
    t.index ["alumni_id"], name: "index_siblings_on_alumni_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "alumnis", "users"
  add_foreign_key "children", "alumnis"
  add_foreign_key "siblings", "alumnis"
end
