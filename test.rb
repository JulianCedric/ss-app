ActiveRecord::Schema.define(version: 2020_07_25_183852) do
    # These are extensions that must be enabled in order to support this database
    
    
    enable_extension "plpgsql"
    
    
    create_table "sessions", force: :cascade do |t|
    t.bigint "tutor_id", null: false
    t.bigint "student_id", null: false
    t.string "date"
    t.boolean "preAssessmentCompletionStatus"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_sessions_on_student_id"
    t.index ["tutor_id"], name: "index_sessions_on_tutor_id"
    End
    
    
    
    create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "parentName"
    t.string "parentEmail"
    t.string "school"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    End
    
    
    
    create_table "tutors", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.integer "yearsExperience"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    end
    add_foreign_key "sessions", "students"
    add_foreign_key "sessions", "tutors"
    end
    