class CreateImags < ActiveRecord::Migration
  def change
    create_table :imags do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at
      t.integer :entity_id
      t.string :entity_type

      t.timestamps null: false
    end
  end
end
