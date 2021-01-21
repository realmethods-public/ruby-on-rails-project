class InitiateApplicationDatabase < ActiveRecord::Migration[5.0]
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  def change
    create_table "dogs", force: :cascade do |t|
      t.string "name"
      t.string "motto"
      t.string "type"
      t.belongs_to "owner"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "owners" do |t|
      t.string "first_name"
      t.string "last_name"
      t.datetime "published_at"
    end
  end
end
