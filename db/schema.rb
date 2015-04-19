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

ActiveRecord::Schema.define(version: 20150419085814) do

  create_table "dependent_vars", force: true do |t|
    t.string   "name"
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dependent_vars", ["experiment_id"], name: "index_dependent_vars_on_experiment_id"

  create_table "experiments", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "independent_vars", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experiment_id"
  end

  add_index "independent_vars", ["experiment_id"], name: "index_independent_vars_on_experiment_id"

  create_table "measurements", force: true do |t|
    t.float    "value"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "independent_var_id"
    t.integer  "variable_id"
    t.string   "variable_type"
  end

  add_index "measurements", ["independent_var_id"], name: "index_measurements_on_independent_var_id"
  add_index "measurements", ["variable_id"], name: "index_measurements_on_variable_id"

end
