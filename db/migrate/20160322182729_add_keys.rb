class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "collections", "users", name: "collections_user_id_fk", on_update: :cascade, on_delete: :cascade
    add_foreign_key "pictures", "collections", name: "pictures_collection_id_fk", on_update: :cascade, on_delete: :cascade
  end
end
