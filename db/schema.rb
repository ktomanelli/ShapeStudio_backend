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

ActiveRecord::Schema.define(version: 2022_02_02_023008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
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

  create_table "assets", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "project_id"
    t.string "file_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "materials", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "project_id"
    t.float "alphaTest"
    t.boolean "alphaToCoverage"
    t.float "blendDstAlpha"
    t.float "blendEquationAlpha"
    t.float "blendSrcAlpha"
    t.boolean "clipShadows"
    t.boolean "colorWrite"
    t.boolean "clipIntersection"
    t.boolean "depthTest"
    t.boolean "depthWrite"
    t.boolean "fog"
    t.boolean "stencilWrite"
    t.float "stencilRef"
    t.float "stencilWriteMask"
    t.float "stencilFuncMask"
    t.string "name"
    t.boolean "needsUpdate"
    t.float "opacity"
    t.boolean "polygonOffset"
    t.float "polygonOffsetFactor"
    t.float "polygonOffsetUnits"
    t.string "precision"
    t.boolean "premultipliedAlpha"
    t.boolean "dithering"
    t.boolean "toneMapped"
    t.boolean "transparent"
    t.string "object_type"
    t.boolean "vertexColors"
    t.boolean "visible"
    t.float "version"
    t.string "blendDst"
    t.string "blendEquation"
    t.string "blending"
    t.string "blendSrc"
    t.jsonb "clippingPlanes"
    t.jsonb "defines"
    t.string "depthFunc"
    t.string "format"
    t.string "stencilFunc"
    t.string "stencilFail"
    t.string "stencilZFail"
    t.string "stencilZPass"
    t.string "side"
    t.string "shadowSide"
    t.jsonb "userData"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "name"
    t.jsonb "file_schema"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "three_objects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "project_id"
    t.string "object_type"
    t.string "name"
    t.uuid "parent_id"
    t.boolean "matrixAutoUpdate"
    t.boolean "visible"
    t.boolean "castShadow"
    t.boolean "receiveShadow"
    t.boolean "frustumCulled"
    t.boolean "matrixWorldNeedsUpdate"
    t.integer "renderOrder"
    t.jsonb "up"
    t.jsonb "position"
    t.jsonb "rotation"
    t.jsonb "quaternion"
    t.jsonb "scale"
    t.jsonb "modelViewMatrix"
    t.jsonb "normalMatrix"
    t.jsonb "matrix"
    t.jsonb "matrixWorld"
    t.jsonb "layers"
    t.jsonb "userData"
    t.jsonb "animations"
    t.uuid "customDepthMaterial_id"
    t.uuid "customDistanceMaterial_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parent_id"], name: "index_three_objects_on_parent_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.boolean "activated"
    t.boolean "show_notice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "three_objects", "three_objects", column: "parent_id"
end
