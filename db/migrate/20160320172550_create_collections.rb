class CreateCollections < ActiveRecord::Migration
  def up
    execute 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
    create_table :collections, id: :uuid do |t|
      t.string :name
      t.references :user
      t.boolean :public, default: true
      t.timestamps null: false
    end
  end
  def down
    drop_table :collections
  end
end
