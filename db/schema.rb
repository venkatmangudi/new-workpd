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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130514130745) do

  create_table "DependantDetails", :primary_key => "idno", :force => true do |t|
    t.text "EmpNo"
    t.text "EmpDependantRelation"
    t.text "EmpDependantName"
    t.text "EmpDependantDOB"
    t.text "EmpDependantStatus"
    t.text "Remarks"
    t.text "Flag1"
    t.text "Flag2"
    t.text "Flag3"
    t.text "Flag4"
    t.text "Flag5"
    t.text "ExtraFlag1"
    t.text "ExtraFlag2"
    t.text "ExtraFlag3"
    t.text "ExtraFlag4"
    t.text "ExtraFlag5"
    t.text "UserID"
    t.text "EnteredTime"
    t.text "ModifiedBy"
    t.text "ModifiedTime"
    t.text "DependantServiceType"
    t.text "DependantServiceDistrict"
    t.text "DependantEmpID"
  end

  create_table "EmpPostings", :primary_key => "idno", :force => true do |t|
    t.text "EmpNo"
    t.text "DateOfPosting"
    t.text "Designation"
    t.text "PlaceOfPostingDistrict"
    t.text "DeptNo"
    t.text "Flag1"
    t.text "flag2"
    t.text "Flag3"
    t.text "Flag4"
    t.text "Flag5"
    t.text "EmpClass"
    t.text "EmpPayScale"
    t.text "SectionID"
    t.text "LocationCode"
    t.text "ExtraFlag1"
    t.text "ExtraFlag2"
    t.text "ExtraFlag3"
    t.text "ExtraFlag4"
    t.text "ExtraFlag5"
    t.text "UserID"
    t.text "EnteredTime"
    t.text "ModifiedBy"
    t.text "ModifiedTime"
    t.text "PostingEndDate"
  end

  create_table "EmpPrimaryDetails", :primary_key => "idno", :force => true do |t|
    t.text "EmpNo"
    t.text "NewEmpID"
    t.text "ExtraFlag4"
    t.text "EMPFullNameEng"
    t.text "EmpFirstName"
    t.text "EmpMiddleName"
    t.text "EmpLastName"
    t.text "EmpFathername"
    t.text "EmpSex"
    t.text "EmpDOB"
    t.text "EmpCategory"
    t.text "EmpCaste"
    t.text "EmpReligion"
    t.text "Flag1"
    t.text "Flag2"
    t.text "Flag3"
    t.text "Flag4"
    t.text "Flag5"
    t.text "EmpBloodGroup"
    t.text "DateofSuperAnnuation"
    t.text "MaritalStatus"
    t.text "ParentDept"
    t.text "PresentDept"
    t.text "EmpStatus"
    t.text "DesigID"
    t.text "WorkingSince"
    t.text "LocationID"
    t.text "SectionID"
    t.text "EmpFirstNameEng"
    t.text "EmpMiddleNameEng"
    t.text "EmpLastNameEng"
    t.text "EmpFathernameEng"
    t.text "SalaryDrawnAgainst"
    t.text "Payscale"
    t.text "HomeDist"
    t.text "ProbationDate"
    t.text "ConfirmationDate"
    t.text "ModeofRecruitment"
    t.text "ExtraFlag1"
    t.text "ExtraFlag2"
    t.text "ExtraFlag3"
    t.text "ExtraFlag5"
    t.text "UserID"
    t.text "EnteredTime"
    t.text "ModifiedBy"
    t.text "ModifiedTime"
    t.text "SeniorityNo"
    t.text "PSCNo"
    t.text "PSCDate"
    t.text "AddlChargeDesig"
    t.text "AddlChargeStartDate"
    t.text "AddlChargeEndDate"
    t.text "PostGraduate"
    t.text "Specialisation"
    t.text "SpecialisationStream"
    t.text "RegistrationNo"
    t.text "LocationCode"
    t.text "OldEMPNO"
    t.text "ContPeriodEnd"
    t.text "Group1"
    t.text "Sourabh"
    t.text "Sourabh1"
    t.text "SpcDesiId"
    t.text "Remark"
    t.text "PG_Year"
    t.text "DesiLock"
    t.text "Enquiry"
    t.text "Reliving"
  end

  create_table "TblLocation", :primary_key => "idno", :force => true do |t|
    t.text "Division"
    t.text "LocationDistrict"
    t.text "LocationCode"
    t.text "LocationID"
    t.text "Beds"
    t.text "LocationName"
    t.text "Dept"
    t.text "LocationAddress1"
    t.text "LocationAddress2"
    t.text "LocationCity"
    t.text "LocationState"
    t.text "LocationPhoneNo"
    t.text "LocationFaxNo"
    t.text "LocationEmail"
    t.text "Flag1"
    t.text "Flag2"
    t.text "Flag3"
    t.text "Flag4"
    t.text "Flag5"
    t.text "LocationDistictID"
    t.text "InstitutionCategory"
    t.text "InstitutionType"
    t.text "ExtraFlag1"
    t.text "ExtraFlag2"
    t.text "ExtraFlag3"
    t.text "ExtraFlag4"
    t.text "ExtraFlag5"
    t.text "Medical"
    t.text "Surgery"
    t.text "Gynaec"
    t.text "Paedriatrics"
    t.text "Anaesth"
    t.text "Optho"
    t.text "Orthro"
    t.text "ENT"
    t.text "Radio"
    t.text "Patho"
    t.text "Psychiatry"
    t.text "TB"
    t.text "Skin"
    t.text "Neuro"
    t.text "Gastero"
    t.text "DentalSpec"
    t.text "OthersSpec"
    t.text "MO"
    t.text "Dental"
    t.text "Others"
    t.text "Ayush"
    t.text "MedFilled"
    t.text "SurgFilled"
    t.text "GynFilled"
    t.text "TotalSpec"
    t.text "BlockName"
    t.text "IsTribal"
  end

  create_table "TblLocation1", :primary_key => "idno", :force => true do |t|
    t.text   "Division"
    t.text   "LocationDistrict"
    t.text   "LocationCode"
    t.text   "LocationID"
    t.text   "Beds"
    t.text   "LocationName"
    t.text   "Dept"
    t.text   "LocationAddress1"
    t.text   "LocationAddress2"
    t.text   "LocationCity"
    t.text   "LocationState"
    t.text   "LocationPhoneNo"
    t.text   "LocationFaxNo"
    t.text   "LocationEmail"
    t.text   "Flag1"
    t.text   "Flag2"
    t.text   "Flag3"
    t.string "Flag4",               :limit => 150
    t.text   "Flag5"
    t.text   "LocationDistictID"
    t.text   "InstitutionCategory"
    t.text   "InstitutionType"
    t.text   "ExtraFlag1"
    t.text   "ExtraFlag2"
    t.text   "ExtraFlag3"
    t.text   "ExtraFlag4"
    t.text   "ExtraFlag5"
    t.text   "Medical"
    t.text   "Surgery"
    t.text   "Gynaec"
    t.text   "Paedriatrics"
    t.text   "Anaesth"
    t.text   "Optho"
    t.text   "Orthro"
    t.text   "ENT"
    t.text   "Radio"
    t.text   "Patho"
    t.text   "Psychiatry"
    t.text   "TB"
    t.text   "Skin"
    t.text   "Neuro"
    t.text   "Gastero"
    t.text   "DentalSpec"
    t.text   "OthersSpec"
    t.text   "MO"
    t.text   "Dental"
    t.text   "Others"
    t.text   "Ayush"
    t.text   "MedFilled"
    t.text   "SurgFilled"
    t.text   "GynFilled"
    t.text   "TotalSpec"
    t.text   "BlockName"
    t.text   "IsTribal"
  end

  create_table "achievements", :force => true do |t|
    t.integer  "employee_id"
    t.string   "award_name"
    t.string   "award_given_by"
    t.text     "details"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "additional_charges", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "location_id"
    t.integer  "designation_id"
    t.date     "from_date"
    t.date     "to_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.text     "remarks"
  end

  create_table "addresses", :force => true do |t|
    t.integer "employee_id",      :null => false
    t.string  "address1"
    t.string  "address2"
    t.string  "address3"
    t.string  "city"
    t.string  "postalcode"
    t.string  "postoffice"
    t.integer "state_id"
    t.date    "validsince"
    t.string  "homephone"
    t.string  "mobilephone"
    t.string  "emailid"
    t.string  "perm_address1"
    t.string  "perm_address2"
    t.string  "perm_address3"
    t.string  "perm_city"
    t.string  "perm_postalcode"
    t.string  "perm_postoffice"
    t.integer "perm_state_id"
    t.string  "perm_homephone"
    t.date    "created_datetime"
    t.date    "updated_datetime"
  end

  create_table "blocks", :force => true do |t|
    t.string   "block_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "district_id"
  end

  create_table "blood_groups", :force => true do |t|
    t.string   "blood_group_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "castes", :force => true do |t|
    t.string   "caste_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "city_name"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "city_state", :limit => 100
  end

  create_table "dependents", :force => true do |t|
    t.integer  "employee_id"
    t.string   "Dependent_name"
    t.integer  "relation_id"
    t.date     "Birthdate"
    t.integer  "status_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "employee_no"
    t.integer  "relationship_id"
    t.integer  "district_id"
    t.integer  "block_id"
  end

  create_table "designation_specialisations", :force => true do |t|
    t.integer "designation_id",    :null => false
    t.integer "specialisation_id", :null => false
  end

  create_table "designations", :force => true do |t|
    t.string   "Designation_Hindi"
    t.string   "Designation_English"
    t.integer  "class_no"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "designataionID"
    t.boolean  "gazetted_officer"
  end

  create_table "districts", :force => true do |t|
    t.string   "district_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "division_id"
  end

  create_table "divisions", :force => true do |t|
    t.string   "division_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "state_id"
  end

  create_table "emp1_tenure_by_band", :id => false, :force => true do |t|
    t.integer "number_of_employees", :limit => 8,  :default => 0, :null => false
    t.string  "tenure",              :limit => 11
  end

  create_table "emp_adds", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_martial_status_id"
    t.string   "emp_present_addr"
    t.string   "emp_identification"
    t.string   "emp_pannum"
    t.string   "emp_dlnum"
    t.string   "emp_passportnum"
    t.string   "emp_alt_email"
    t.string   "emp_alt_phone"
    t.string   "emp_alt_mobile"
    t.string   "emp_present_loc_master_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "emp_edus", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_education"
    t.string   "emp_specialisation"
    t.text     "emp_remarks"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "emp_gen_view", :id => false, :force => true do |t|
    t.string  "gender"
    t.integer "number_of_employees", :limit => 8, :default => 0, :null => false
  end

  create_table "emp_gen_views", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emp_qual_view", :id => false, :force => true do |t|
    t.integer "number_of_employees", :limit => 8, :default => 0, :null => false
    t.string  "qualification_name"
  end

  create_table "emp_qual_views", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emp_spec_view", :id => false, :force => true do |t|
    t.integer "number_of_employees", :limit => 8, :default => 0, :null => false
    t.string  "specialization_name"
  end

  create_table "emp_spec_views", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emp_tenure_by_band", :id => false, :force => true do |t|
    t.integer "number_of_employees", :limit => 8,  :default => 0, :null => false
    t.string  "tenure",              :limit => 11
  end

  create_table "emp_tenure_by_bands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "empl_age", :id => false, :force => true do |t|
    t.string  "employee_name"
    t.decimal "employee_age",  :precision => 10, :scale => 4
  end

  create_table "empl_tenure", :id => false, :force => true do |t|
    t.integer "employee_id",                                   :null => false
    t.decimal "employee_tenure", :precision => 7, :scale => 0
  end

  create_table "employee_age_by_band", :id => false, :force => true do |t|
    t.integer "number_of_employees", :limit => 8, :default => 0, :null => false
    t.string  "ageband",             :limit => 8
  end

  create_table "employee_age_by_bands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employee_by_gender", :id => false, :force => true do |t|
    t.string  "Gender"
    t.integer "Number of Employees", :limit => 8, :default => 0, :null => false
  end

  create_table "employee_by_qualification", :id => false, :force => true do |t|
    t.integer "Number of Employees", :limit => 8, :default => 0, :null => false
    t.string  "Qualification Name"
  end

  create_table "employee_by_specialisation", :id => false, :force => true do |t|
    t.integer "Number of Employees", :limit => 8, :default => 0, :null => false
    t.string  "Specialization Name"
  end

  create_table "employee_cadres", :force => true do |t|
    t.string   "employee_cadre_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "employee_sanction_working", :id => false, :force => true do |t|
    t.integer "employee_cadre_id"
    t.integer "employee_id"
    t.string  "emp_full_name"
    t.string  "gender_name"
    t.date    "join_date"
    t.integer "employee_class"
    t.integer "qualification_name_id"
    t.string  "qualification_name"
    t.integer "specialisation_id"
    t.string  "specialisation_name"
    t.integer "designation_id"
    t.string  "Designation_English"
    t.string  "Designation_hindi"
    t.integer "employment_type_id"
    t.string  "employment_type"
    t.integer "status_id"
    t.string  "status_name"
    t.integer "district_id"
    t.string  "district_name"
    t.integer "hospital_id"
    t.string  "hospital_name"
    t.integer "sanctioned_posts"
  end

  create_table "employee_sanction_workings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employee_tenure_by_band", :id => false, :force => true do |t|
    t.integer "COUNT(*)", :limit => 8,  :default => 0, :null => false
    t.string  "tenure",   :limit => 11
  end

  create_table "employee_work_details", :force => true do |t|
    t.integer "employee_id",                               :null => false
    t.integer "status_id"
    t.integer "designation_id"
    t.integer "employee_class"
    t.date    "join_date"
    t.string  "pub_svc_comm_no",             :limit => 15
    t.integer "pub_svc_comm_year"
    t.integer "recruitment_mode_id"
    t.string  "medical_registration_number", :limit => 25
    t.date    "medical_registration_date"
    t.date    "superannuation_date"
  end

  add_index "employee_work_details", ["employee_id"], :name => "employee_id"

  create_table "employees", :force => true do |t|
    t.string   "emp_id"
    t.string   "emp_full_name"
    t.string   "emp_fname"
    t.string   "emp_mname"
    t.string   "emp_lname"
    t.string   "emp_fathername"
    t.integer  "gender_id"
    t.date     "emp_dob"
    t.integer  "category_id"
    t.integer  "religion_id"
    t.integer  "caste_id"
    t.integer  "marital_status_id"
    t.integer  "blood_group_id"
    t.string   "emp_permanent_address"
    t.integer  "emp_loc_master_id"
    t.string   "emp_phone_no"
    t.string   "emp_mobile_no"
    t.string   "emp_email"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "emp_treasury_id"
    t.integer  "employment_type_id"
    t.integer  "employee_cadre_id"
    t.integer  "ddo_num"
    t.integer  "ddo_code"
    t.integer  "district_id"
    t.integer  "division_id"
    t.integer  "block_id"
    t.integer  "hospital_id"
    t.integer  "secondary_reporting_manager_id"
    t.integer  "reporting_manager_id"
  end

  add_index "employees", ["emp_loc_master_id"], :name => "emp_loc_master_id"

  create_table "employees_details", :id => false, :force => true do |t|
    t.integer "employee_id"
    t.integer "employee_cadre_id"
    t.string  "emp_full_name"
    t.string  "gender_name"
    t.date    "join_date"
    t.integer "employee_class"
    t.integer "qualification_name_id", :default => 0, :null => false
    t.string  "qualification_name"
    t.integer "specialisation_id",     :default => 0, :null => false
    t.integer "designation_id",                       :null => false
    t.string  "specialisation_name"
    t.integer "employment_type_id",    :default => 0, :null => false
    t.string  "employment_type"
    t.integer "status_id",             :default => 0, :null => false
    t.string  "status_name"
    t.integer "district_id",           :default => 0, :null => false
    t.string  "district_name"
    t.integer "hospital_id",           :default => 0, :null => false
    t.string  "hospital_name"
  end

  create_table "employment_types", :force => true do |t|
    t.string   "employment_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "gender_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "graph_employee_status", :id => false, :force => true do |t|
    t.integer "id",                  :default => 0, :null => false
    t.string  "Specialisation_name"
  end

  create_table "graph_employee_status_by_band", :id => false, :force => true do |t|
    t.integer "specialisation_id",                                              :default => 0, :null => false
    t.string  "specialisation"
    t.decimal "nos",                             :precision => 32, :scale => 0
    t.string  "statusband",        :limit => 14
  end

  create_table "graph_employee_status_by_bands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "graph_employee_statuses", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "graph_hospital_vacant", :id => false, :force => true do |t|
    t.integer "id",                  :null => false
    t.string  "Specialisation_name"
  end

  create_table "graph_hospital_vacant_by_band", :id => false, :force => true do |t|
    t.integer "specialisation_id",                             :null => false
    t.string  "specialisation"
    t.integer "nos",               :limit => 8, :default => 0, :null => false
    t.string  "hospitalband",                                  :null => false
  end

  create_table "graph_hospital_vacant_by_bands", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "graph_hospital_vacants", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "health_dept_locations", :force => true do |t|
    t.integer  "location_id"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "block_id"
    t.string   "name"
    t.boolean  "admin_location"
    t.string   "district_code"
    t.boolean  "istribal"
    t.integer  "no_of_beds"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "institution_type_id"
    t.integer  "institution_master_id"
    t.integer  "ditricts_id"
    t.integer  "hospital_id"
  end

  create_table "hospital_performas", :force => true do |t|
    t.integer  "outdoor",               :default => 0
    t.integer  "indoor",                :default => 0
    t.integer  "minor_surgery",         :default => 0
    t.integer  "major_surgery",         :default => 0
    t.integer  "normal_delivery",       :default => 0
    t.integer  "caesarion_delivery",    :default => 0
    t.integer  "pathology",             :default => 0
    t.integer  "image_scans",           :default => 0
    t.integer  "ultra_sound",           :default => 0
    t.integer  "ctmri",                 :default => 0
    t.integer  "ecg",                   :default => 0
    t.integer  "ecotmt",                :default => 0
    t.integer  "blood_unit_transfused", :default => 0
    t.integer  "hemo",                  :default => 0
    t.integer  "mlc",                   :default => 0
    t.integer  "post_mortem",           :default => 0
    t.text     "remarks"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.integer  "emp_treasury_id"
    t.integer  "hospital_id"
    t.integer  "year"
    t.integer  "month_id"
  end

  add_index "hospital_performas", ["hospital_id", "month_id", "year", "emp_treasury_id"], :name => "emp_treasury_id", :unique => true

  create_table "hospital_reports", :force => true do |t|
    t.integer  "hospital_id"
    t.integer  "NewReports"
    t.integer  "AnesSan"
    t.integer  "AnesAvl"
    t.integer  "AnesGap"
    t.integer  "AnesUA"
    t.integer  "GynSan"
    t.integer  "GynAvl"
    t.integer  "GynGap"
    t.integer  "GynUA"
    t.integer  "PaedSan"
    t.integer  "PaedAvl"
    t.integer  "PaedGap"
    t.integer  "PaedUA"
    t.integer  "OpthSan"
    t.integer  "OpthAvl"
    t.integer  "OpthGap"
    t.integer  "OpthUA"
    t.integer  "OrthSan"
    t.integer  "OrthAvl"
    t.integer  "OrthGap"
    t.integer  "OrthUA"
    t.integer  "ENTSan"
    t.integer  "ENTAvl"
    t.integer  "ENTGap"
    t.integer  "ENTUA"
    t.integer  "RadiSan"
    t.integer  "RadiAvl"
    t.integer  "RadiGap"
    t.integer  "RadiUA"
    t.integer  "PathSan"
    t.integer  "PathAvl"
    t.integer  "PathGap"
    t.integer  "PathUA"
    t.integer  "SurgSan"
    t.integer  "SurgAvl"
    t.integer  "SurgGap"
    t.integer  "SurgUA"
    t.integer  "GenlSan"
    t.integer  "GenlAvl"
    t.integer  "GenlGap"
    t.integer  "GenlUA"
    t.integer  "TBSan"
    t.integer  "TBAvl"
    t.integer  "TBGap"
    t.integer  "TBUA"
    t.integer  "DenSpeSan"
    t.integer  "DenspeAvl"
    t.integer  "DenSpeGap"
    t.integer  "DenSpeUA"
    t.integer  "MOSan"
    t.integer  "MOAvl"
    t.integer  "MOGap"
    t.integer  "MOUA"
    t.integer  "DentSan"
    t.integer  "DentAvl"
    t.integer  "DentGap"
    t.integer  "DentUA"
    t.integer  "Total"
    t.integer  "TotalUA"
    t.integer  "Other"
    t.integer  "OtherUA"
    t.integer  "Total_Spec_San"
    t.integer  "Total_Spec_Avl"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "hospital_types", :force => true do |t|
    t.string "hospital_type",    :null => false
    t.string "remarks"
    t.date   "created_datetime", :null => false
    t.date   "updated_datetime", :null => false
  end

  create_table "hospitals", :force => true do |t|
    t.integer  "location_id"
    t.integer  "beds"
    t.string   "hospital_name"
    t.integer  "phone_no"
    t.integer  "fax_no"
    t.integer  "division_id"
    t.integer  "district_id"
    t.integer  "block_id"
    t.integer  "hospital_type_id",         :null => false
    t.integer  "institution_type_id"
    t.boolean  "IsAdministrativeLocation"
    t.boolean  "IsTribal"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "institution_masters", :force => true do |t|
    t.integer  "pincode_id"
    t.string   "Institution_Name"
    t.integer  "Institution_type_id"
    t.integer  "Special_Cadre_id"
    t.integer  "district_id"
    t.integer  "Beds"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "institution_types", :force => true do |t|
    t.string   "Institution_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "leave_types", :force => true do |t|
    t.string   "leave_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leaveemps", :force => true do |t|
    t.integer  "employee_id"
    t.date     "date_from"
    t.date     "date_to"
    t.integer  "days"
    t.integer  "leave_type_id"
    t.text     "leave_reason"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "state_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "locationID"
    t.string   "location_name"
    t.string   "location_code"
    t.integer  "block_id"
  end

  create_table "martial_stats", :force => true do |t|
    t.string   "martial_status_type"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "months", :force => true do |t|
    t.string   "month_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "performaones", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "leave_taken",     :default => 0
    t.integer  "patients_opd",    :default => 0
    t.integer  "patients_admit",  :default => 0
    t.integer  "patients_ref",    :default => 0
    t.integer  "emer_calls",      :default => 0
    t.integer  "emer_duty",       :default => 0
    t.integer  "mlc_perf",        :default => 0
    t.integer  "postmor_perf",    :default => 0
    t.integer  "court_presence",  :default => 0
    t.integer  "op_major",        :default => 0
    t.integer  "op_minor",        :default => 0
    t.integer  "op_caesarion",    :default => 0
    t.integer  "lab_tests",       :default => 0
    t.integer  "image_tests",     :default => 0
    t.text     "equip"
    t.text     "equipdetail"
    t.text     "equipdefic"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "hospital_id"
    t.integer  "designation_id"
    t.integer  "emp_treasury_id"
    t.integer  "month_id"
    t.integer  "year"
  end

  create_table "pincodes", :force => true do |t|
    t.integer  "pincode"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posting_types", :force => true do |t|
    t.string   "posting_type_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "postings", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "hospital_id"
    t.integer  "designation_id"
    t.date     "posting_from"
    t.date     "posting_to"
    t.string   "payscale"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "district_id"
    t.string   "posting_order_number"
    t.date     "posting_order_date"
    t.string   "posting_order_authority"
    t.boolean  "current_location"
    t.integer  "posting_type_id"
  end

  add_index "postings", ["designation_id"], :name => "index_postings_on_designation_id"
  add_index "postings", ["district_id"], :name => "index_postings_on_district_id"
  add_index "postings", ["employee_id"], :name => "index_postings_on_employee_id"
  add_index "postings", ["hospital_id"], :name => "index_postings_on_hospital_id"

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "promotions", :force => true do |t|
    t.integer  "employee_id"
    t.string   "current_payscale"
    t.integer  "designation_id"
    t.string   "new_payscale"
    t.integer  "order_no"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "qualification_names", :force => true do |t|
    t.string   "Qualification_name"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "qualification_types", :force => true do |t|
    t.string   "Qualification_type"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "Qualification_type_eng", :limit => 100
  end

  create_table "qualifications", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "qualification_type_id"
    t.integer  "qualification_name_id"
    t.integer  "specialisation_id"
    t.integer  "year"
    t.integer  "university_id"
    t.text     "Remarks"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "employee_no"
  end

  add_index "qualifications", ["employee_id", "qualification_name_id"], :name => "emp_qual_name_id"
  add_index "qualifications", ["employee_id"], :name => "index_qualifications_on_employee_id"
  add_index "qualifications", ["qualification_name_id"], :name => "index_qualifications_on_qualification_name_id"
  add_index "qualifications", ["qualification_type_id"], :name => "index_qualifications_on_qualification_type_id"
  add_index "qualifications", ["specialisation_id"], :name => "index_qualifications_on_specialisation_id"

  create_table "recruitment_modes", :force => true do |t|
    t.string  "recruitment_mode", :null => false
    t.date    "created_datetime", :null => false
    t.integer "created_userid",   :null => false
  end

  create_table "relations", :force => true do |t|
    t.string   "Relation_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "relationships", :force => true do |t|
    t.string   "rel_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "religions", :force => true do |t|
    t.string   "religion_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "report_vacant_hopistals", :id => false, :force => true do |t|
    t.integer "hospital_id"
    t.string  "hospital_type",       :null => false
    t.string  "hospital_name"
    t.integer "sanctioned_posts"
    t.integer "designation_id"
    t.integer "specialisation_id",   :null => false
    t.string  "Specialisation_name"
  end

  create_table "reports", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rpt_data_gaps", :id => false, :force => true do |t|
    t.integer "district_id"
    t.string  "district_name"
    t.integer "total_employees",       :limit => 8,                                :default => 0, :null => false
    t.integer "father_name_missing",   :limit => 8,                                :default => 0, :null => false
    t.integer "dob_missing",           :limit => 8,                                :default => 0, :null => false
    t.integer "category_missing",      :limit => 8,                                :default => 0, :null => false
    t.integer "fjoindate_missing",     :limit => 8,                                :default => 0, :null => false
    t.integer "maritalstatus_missing", :limit => 8,                                :default => 0, :null => false
    t.integer "registration_missing",  :limit => 8,                                :default => 0, :null => false
    t.integer "treasurycode_missing",  :limit => 8,                                :default => 0, :null => false
    t.decimal "percentage_missing",                 :precision => 32, :scale => 2
  end

  create_table "sanctioned_by_designation", :id => false, :force => true do |t|
    t.string  "designation_english"
    t.string  "designation_hindi"
    t.decimal "total_sanctioned",    :precision => 32, :scale => 0
  end

  create_table "sanctioned_by_designations", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sanctioned_posts", :force => true do |t|
    t.integer  "hospital_id"
    t.integer  "sanctioned_posts"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "designation_id"
    t.integer  "district_id"
    t.integer  "division_id"
    t.integer  "block_id"
  end

  add_index "sanctioned_posts", ["designation_id"], :name => "index_sanctioned_posts_on_designation_id"
  add_index "sanctioned_posts", ["hospital_id", "designation_id"], :name => "sanc_desig"
  add_index "sanctioned_posts", ["hospital_id"], :name => "index_sanctioned_posts_on_hospital_id"

  create_table "showcauses", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "case_no"
    t.string   "district_authority"
    t.date     "SC_date"
    t.string   "title"
    t.text     "details"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "soutemp", :id => false, :force => true do |t|
    t.integer "emp_id", :null => false
    t.string  "name",   :null => false
  end

  create_table "special_cadres", :force => true do |t|
    t.string   "Special_Cadre_Type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "specialisations", :force => true do |t|
    t.string   "Specialisation_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "state_id"
    t.string   "state_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string   "Status_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "taluks", :force => true do |t|
    t.string   "taluk_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "temp", :primary_key => "idno", :force => true do |t|
    t.text "Division"
    t.text "LocationDistrict"
    t.text "LocationCode"
    t.text "LocationID"
    t.text "Beds"
    t.text "LocationName"
    t.text "Dept"
    t.text "LocationAddress1"
    t.text "LocationAddress2"
    t.text "LocationCity"
    t.text "LocationState"
    t.text "LocationPhoneNo"
    t.text "LocationFaxNo"
    t.text "LocationEmail"
    t.text "Flag1"
    t.text "Flag2"
    t.text "Flag3"
    t.text "Flag4"
    t.text "Flag5"
    t.text "LocationDistictID"
    t.text "InstitutionCategory"
    t.text "InstitutionType"
    t.text "ExtraFlag1"
    t.text "ExtraFlag2"
    t.text "ExtraFlag3"
    t.text "ExtraFlag4"
    t.text "ExtraFlag5"
    t.text "Medical"
    t.text "Surgery"
    t.text "Gynaec"
    t.text "Paedriatrics"
    t.text "Anaesth"
    t.text "Optho"
    t.text "Orthro"
    t.text "ENT"
    t.text "Radio"
    t.text "Patho"
    t.text "Psychiatry"
    t.text "TB"
    t.text "Skin"
    t.text "Neuro"
    t.text "Gastero"
    t.text "DentalSpec"
    t.text "OthersSpec"
    t.text "MO"
    t.text "Dental"
    t.text "Others"
    t.text "Ayush"
    t.text "MedFilled"
    t.text "SurgFilled"
    t.text "GynFilled"
    t.text "TotalSpec"
    t.text "BlockName"
    t.text "IsTribal"
  end

  create_table "tempus", :force => true do |t|
    t.string   "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "treasury_designations", :force => true do |t|
    t.string   "Designation_Hindi"
    t.string   "Designation_English"
    t.integer  "class_no"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "designataionID"
    t.boolean  "gazetted_officer"
  end

  create_table "treasury_hr_info", :id => false, :force => true do |t|
    t.integer "ID"
    t.integer "EMP_CODE"
    t.string  "EMP_FIRST_NAME",      :limit => 78
    t.string  "EMP_MIDDLE_NAME",     :limit => 46
    t.string  "EMP_LAST_NAME",       :limit => 40
    t.string  "SEX",                 :limit => 1
    t.string  "FATHER_HUSBAND_NAME", :limit => 91
    t.string  "CAT",                 :limit => 43
    t.string  "ADDRESS",             :limit => 153
    t.integer "DDO_CODE"
    t.string  "OFFICE_NAME",         :limit => 117
    t.string  "DESIGNATION",         :limit => 123
    t.string  "DOB",                 :limit => 10
    t.string  "DOJ",                 :limit => 10
    t.string  "PAYSCAL",             :limit => 22
    t.integer "BASIC"
  end

  create_table "universities", :force => true do |t|
    t.string   "University_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "fname"
    t.string   "lname"
    t.integer  "role_id"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "district_id"
    t.integer  "state_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vw_class_i_sanctioned", :id => false, :force => true do |t|
    t.integer "hospital_id"
    t.decimal "class_I_sanctioned", :precision => 32, :scale => 0
  end

  create_table "vw_class_i_working", :id => false, :force => true do |t|
    t.integer "hospital_id",                  :default => 0, :null => false
    t.integer "class_I_working", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_class_ii_sanctioned", :id => false, :force => true do |t|
    t.integer "hospital_id"
    t.decimal "class_II_sanctioned", :precision => 32, :scale => 0
  end

  create_table "vw_class_ii_working", :id => false, :force => true do |t|
    t.integer "hospital_id",                   :default => 0, :null => false
    t.integer "class_II_working", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_current_locations", :id => false, :force => true do |t|
    t.integer "employee_id"
    t.integer "hospital_id"
    t.integer "designation_id"
    t.date    "posting_from"
    t.date    "posting_to"
    t.string  "payscale"
    t.integer "posting_type_id"
  end

  create_table "vw_data_gaps_category", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "category_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_dob", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "dob_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_fathername", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "Father_name_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_fjoindate", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "fjoindate_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_maritalstatus", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "maritalstatus_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_registration", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "registration_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_total", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "total_employees", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_data_gaps_treasurycode", :id => false, :force => true do |t|
    t.integer "district_id"
    t.integer "treasurycode_missing", :limit => 8, :default => 0, :null => false
  end

  create_table "vw_sanctioned_working_by_hospital", :id => false, :force => true do |t|
    t.integer "hospital_id",                                                    :default => 0, :null => false
    t.string  "hospital_name"
    t.decimal "class_1_sanctioned",              :precision => 32, :scale => 0, :default => 0, :null => false
    t.integer "class_1_working",    :limit => 8,                                :default => 0, :null => false
    t.decimal "class_1_vacant",                  :precision => 33, :scale => 0, :default => 0, :null => false
    t.decimal "class_2_sanctioned",              :precision => 32, :scale => 0, :default => 0, :null => false
    t.integer "class_2_working",    :limit => 8,                                :default => 0, :null => false
    t.decimal "class_2_vacant",                  :precision => 33, :scale => 0, :default => 0, :null => false
  end

  create_table "vw_sanctioned_working_by_hospitals", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
