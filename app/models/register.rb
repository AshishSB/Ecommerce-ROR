class Register < ActiveRecord::Base
	validates :name, :presence =>true, :length => {:minimum =>4, :maximum =>30}
	validates :email, :presence =>true ,:uniqueness =>true
	validates :password, :presence =>true
	has_one :image , as: :entity
	accepts_nested_attributes_for :image
	def self.validate_credential(email, password)
	@user=Register.where(:email=>email, :password=>password)
	if !@user.blank?
       @user.first
    else
   	   nil
	end
end
end
