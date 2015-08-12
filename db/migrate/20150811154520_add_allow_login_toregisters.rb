class AddAllowLoginToregisters < ActiveRecord::Migration
  def change
  	add_column :registers, :allow_login, :string
  end
end
