class AddnameToregisters < ActiveRecord::Migration
  def change
  	add_column :registers, :name ,:string
  end
end
