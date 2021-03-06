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

ActiveRecord::Schema.define(version: 20150102152139) do

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

  create_table "detalle_facturas", force: :cascade do |t|
    t.integer  "factura",    limit: 4
    t.integer  "producto",   limit: 4
    t.float    "unidades",   limit: 24
    t.float    "subtotal",   limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.integer  "id_cliente",     limit: 4
    t.date     "fecha_factura"
    t.float    "base_imponible", limit: 24
    t.float    "descuento",      limit: 24
    t.float    "iva",            limit: 24
    t.float    "total",          limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "factura",        limit: 4
  end

  create_table "productos", force: :cascade do |t|
    t.string   "nombre",              limit: 255
    t.integer  "id_proveedor",        limit: 4
    t.integer  "id_categoria",        limit: 4
    t.float    "cantidad_por_unidad", limit: 24
    t.float    "precio_coste",        limit: 24
    t.float    "precio_venta",        limit: 24
    t.string   "estado",              limit: 255
    t.float    "unidades",            limit: 24
    t.float    "unidades_minimas",    limit: 24
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "nombre",         limit: 255
    t.string   "contacto",       limit: 255
    t.string   "cargo_contacto", limit: 255
    t.string   "direccion",      limit: 255
    t.integer  "id_ciudad",      limit: 4
    t.integer  "id_provincia",   limit: 4
    t.integer  "id_pais",        limit: 4
    t.string   "cp",             limit: 255
    t.string   "telefono",       limit: 255
    t.string   "movil",          limit: 255
    t.string   "email",          limit: 255
    t.string   "url",            limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
