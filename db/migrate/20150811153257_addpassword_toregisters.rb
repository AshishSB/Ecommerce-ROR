class AddpasswordToregisters < ActiveRecord::Migration
  def change
  	add_column :registers, :password ,:string
  end
end
