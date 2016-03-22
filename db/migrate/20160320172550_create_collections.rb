class CreateCollections < ActiveRecord::Migration
  def change
    execute 'CREATE EXTENSION IF NOT EXISTS "uuid-ossp";'
    create_table :collections, id: :uuid do |t|
      t.references :user
      t.boolean :public, default: true
      t.timestamps null: false
    end
  end
end
