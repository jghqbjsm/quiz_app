# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150603065904) do

  create_table "course", primary_key: "ID" do |t|
    t.string "Name", limit: 45, null: false
  end

  create_table "lecturer", primary_key: "ID" do |t|
    t.integer "LecturerNumber", limit: 4,  null: false
    t.string  "FirstName",      limit: 45, null: false
    t.string  "LastName",       limit: 45, null: false
    t.string  "Email",          limit: 45, null: false
    t.string  "Password",       limit: 45, null: false
    t.boolean "IsAdm",          limit: 1,  null: false
  end

  create_table "optionanswer", primary_key: "ID", force: :cascade do |t|
    t.string  "Option",     limit: 45, null: false
    t.integer "QuestionID", limit: 4
  end

  add_index "optionanswer", ["QuestionID"], name: "QuestionID_idx", using: :btree

  create_table "question", primary_key: "QuestionID", force: :cascade do |t|
    t.string  "Title",          limit: 45, null: false
    t.string  "CorrectAnswer",  limit: 45, null: false
    t.integer "TypeQuestionID", limit: 4
  end

  add_index "question", ["TypeQuestionID"], name: "TypeQuestionPK_idx", using: :btree

  create_table "questionnaire", primary_key: "ID", force: :cascade do |t|
    t.string   "Name",    limit: 45, null: false
    t.datetime "EndDate",            null: false
    t.integer  "UnitID",  limit: 4
  end

  add_index "questionnaire", ["UnitID"], name: "UnitPK_idx", using: :btree

  create_table "questionnairequestion", id: false, force: :cascade do |t|
    t.integer "QuestionID",      limit: 4, null: false
    t.integer "QuestionnaireID", limit: 4, null: false
  end

  add_index "questionnairequestion", ["QuestionnaireID"], name: "IDQuestionnaire_idx", using: :btree
  add_index "questionnairequestion", ["QuestionnaireID"], name: "QuestionnairePK_idx", using: :btree

  create_table "student", primary_key: "StudentID", force: :cascade do |t|
    t.integer "StudentNumber", limit: 4,  null: false
    t.string  "FirstName",     limit: 45
    t.string  "LastName",      limit: 45
    t.string  "Email",         limit: 45
    t.string  "Password",      limit: 45
    t.integer "CourseID",      limit: 4,  null: false
  end

  add_index "student", ["CourseID"], name: "CourseID_idx", using: :btree

  create_table "typequestion", primary_key: "ID", force: :cascade do |t|
    t.string "Type", limit: 45, null: false
  end

  create_table "unit", primary_key: "ID", force: :cascade do |t|
    t.string  "Name",     limit: 45, null: false
    t.integer "CourseID", limit: 4,  null: false
  end

  create_table "units", force: :cascade do |t|
    t.integer  "unitID",     limit: 4
    t.string   "unitTitle",  limit: 255
    t.string   "studentID",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "studentID",  limit: 4
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "optionanswer", "question", column: "QuestionID", primary_key: "QuestionID", name: "QuestionPK"
  add_foreign_key "question", "typequestion", column: "TypeQuestionID", primary_key: "ID", name: "TypeQuestionPK"
  add_foreign_key "questionnaire", "unit", column: "UnitID", primary_key: "ID", name: "UnitPK"
  add_foreign_key "questionnairequestion", "question", column: "QuestionID", primary_key: "QuestionID", name: "IDQuestion"
  add_foreign_key "questionnairequestion", "questionnaire", column: "QuestionnaireID", primary_key: "ID", name: "IDQuestionnaire"
  add_foreign_key "student", "course", column: "CourseID", primary_key: "ID", name: "IdCourse"
  add_foreign_key "unit", "course", column: "CourseID", primary_key: "ID", name: "CourseID"
end
