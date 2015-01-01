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

ActiveRecord::Schema.define(version: 20150101160743) do

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre",           limit: 255
    t.string   "primer_apellido",  limit: 255
    t.string   "segundo_apellido", limit: 255
    t.string   "razon_social",     limit: 255
    t.string   "tipo",             limit: 255
    t.string   "cif_nif",          limit: 255
    t.string   "cp",               limit: 255
    t.integer  "id_poblacion",     limit: 4
    t.integer  "id_provincia",     limit: 4
    t.string   "direccion",        limit: 255
    t.string   "telefono",         limit: 255
    t.string   "movil",            limit: 255
    t.string   "email",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

end
