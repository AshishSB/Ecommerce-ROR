class AddemailToregisters < ActiveRecord::Migration
  def change
  	add_column :registers, :email ,:string
  end
end
