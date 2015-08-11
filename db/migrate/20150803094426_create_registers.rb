class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :index
      t.string :new
      t.string :create
      t.string :show
      t.string :login

      t.timestamps null: false
    end
  end
end
