class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures, id: :uuid do |t|
      t.references :collection, type: :uuid
      t.string :file
      t.timestamps null: false
    end
  end
end
