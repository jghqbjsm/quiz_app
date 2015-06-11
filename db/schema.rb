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

ActiveRecord::Schema.define(version: 0) do

  create_table "course", primary_key: "ID", force: :cascade do |t|
    t.string "Name", limit: 45, null: false
  end

  create_table "lecturer", primary_key: "ID", force: :cascade do |t|
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

  add_index "optionanswer", ["QuestionID"], name: "QuestionID_idx"

  create_table "question", primary_key: "QuestionID", force: :cascade do |t|
    t.string  "Title",          limit: 45, null: false
    t.string  "CorrectAnswer",  limit: 45, null: false
    t.integer "TypeQuestionID", limit: 4
  end

  add_index "question", ["TypeQuestionID"], name: "TypeQuestionPK_idx"

  create_table "questionnaire", primary_key: "ID", force: :cascade do |t|
    t.string   "Name",    limit: 45, null: false
    t.datetime "EndDate",            null: false
    t.integer  "UnitID",  limit: 4
  end

  add_index "questionnaire", ["UnitID"], name: "UnitPK_idx"

  create_table "questionnairequestion", id: false, force: :cascade do |t|
    t.integer "QuestionID",      limit: 4, null: false
    t.integer "QuestionnaireID", limit: 4, null: false
  end

  add_index "questionnairequestion", ["QuestionID"], name: "IDQuestion"
  add_index "questionnairequestion", ["QuestionnaireID"], name: "IDQuestionnaire_idx"
  add_index "questionnairequestion", ["QuestionnaireID"], name: "QuestionnairePK_idx"

  create_table "student", primary_key: "StudentID", force: :cascade do |t|
    t.integer "StudentNumber", limit: 4,  null: false
    t.string  "FirstName",     limit: 45
    t.string  "LastName",      limit: 45
    t.string  "Email",         limit: 45
    t.string  "Password",      limit: 45
    t.integer "CourseID",      limit: 4,  null: false
  end

  add_index "student", ["CourseID"], name: "CourseID_idx"
  add_index "student", ["Email"], name: "index_student_on_email", unique: true

  create_table "typequestion", primary_key: "ID", force: :cascade do |t|
    t.string "Type", limit: 45, null: false
  end

  create_table "unit", primary_key: "ID", force: :cascade do |t|
    t.string  "Name",     limit: 45, null: false
    t.integer "CourseID", limit: 4,  null: false
  end

  add_index "unit", ["CourseID"], name: "CourseID"

  create_table "unitlecturer", id: false, force: :cascade do |t|
    t.integer "UnitID",     limit: 4, default: 0, null: false
    t.integer "LecturerID", limit: 4, default: 0, null: false
  end

  add_index "unitlecturer", ["LecturerID"], name: "lectID"

  create_table "useranswer", id: false, force: :cascade do |t|
    t.integer "StudentID",  limit: 4,   default: 0, null: false
    t.integer "QuestionID", limit: 4,   default: 0, null: false
    t.string  "Answer",     limit: 128,             null: false
  end

  add_index "useranswer", ["QuestionID"], name: "QuesID"

end
