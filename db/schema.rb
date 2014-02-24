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

ActiveRecord::Schema.define(version: 20140221141744) do

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "data_de_nascimento"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interesses", force: true do |t|
    t.integer  "produto_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interesses", ["cliente_id"], name: "index_interesses_on_cliente_id"
  add_index "interesses", ["produto_id"], name: "index_interesses_on_produto_id"

  create_table "lojas", force: true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.integer  "cnpj"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferencia", force: true do |t|
    t.integer  "produto_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferencia", ["cliente_id"], name: "index_preferencia_on_cliente_id"
  add_index "preferencia", ["produto_id"], name: "index_preferencia_on_produto_id"

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.float    "preco"
    t.integer  "loja_id"
    t.integer  "promocao_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "produtos", ["loja_id"], name: "index_produtos_on_loja_id"
  add_index "produtos", ["promocao_id"], name: "index_produtos_on_promocao_id"

  create_table "promocaos", force: true do |t|
    t.string   "nome"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.float    "porcentagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
