require 'pry'

class User
	attr_accessor :email, :age
	@@all_user = []
	def initialize(email_to_save,age_to_save)
			@email = email_to_save
			@age = age_to_save
			@@all_user << self
	end		

	def self.all
		puts @@all_user
	end
end

binding.pry
puts "end of file"