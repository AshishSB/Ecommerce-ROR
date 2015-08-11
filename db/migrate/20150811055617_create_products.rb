class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :new
      t.string :index
      t.string :show
      t.string :edit
      t.string :create

      t.timestamps null: false
    end
  end
end
