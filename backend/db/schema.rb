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

ActiveRecord::Schema.define(version: 2020_06_11_162734) do

  create_table "caracteristicas", force: :cascade do |t|
    t.string "Descricao"
    t.boolean "Estilo"
  end

  create_table "estudios", force: :cascade do |t|
    t.string "Nome"
    t.string "Email"
    t.string "CNPJ"
    t.string "Instagram"
    t.string "Facebook"
    t.string "CEP"
    t.string "Estado"
    t.string "Cidade"
    t.string "Bairro"
    t.string "Rua"
    t.string "Numero"
    t.string "Complemento"
    t.string "Senha"
  end

  create_table "tatuadors", force: :cascade do |t|
    t.string "Nome"
    t.string "Email"
    t.string "CPF"
    t.integer "NumeroDeSeguidores"
    t.string "Instagram"
    t.string "Celular"
    t.string "Senha"
    t.text "Sobre"
    t.string "Foto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tatuagems", force: :cascade do |t|
    t.string "Titulo"
    t.string "Link"
    t.string "NumeroSalvos"
    t.integer "Tatuador_id"
    t.integer "Estudio_id"
    t.index ["Estudio_id"], name: "index_tatuagems_on_Estudio_id"
    t.index ["Tatuador_id"], name: "index_tatuagems_on_Tatuador_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "Nome"
    t.string "Email"
    t.string "CPF"
    t.string "NomeDeUsuario"
    t.string "password_digest"
    t.string "TipoDeConta"
    t.string "Foto"
    t.text "Sobre"
    t.string "Celular"
    t.string "Instagram"
    t.integer "NumeroDeSeguidores"
  end

end
