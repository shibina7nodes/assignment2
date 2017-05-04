class Student < ApplicationRecord
	validates :username, presence:{ message: 'should have some words in it' }
	validates :password, presence:true 
	validates :cpassword, presence:true 
	validates :email, presence:true 

end
