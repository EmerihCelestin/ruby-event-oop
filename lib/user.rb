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

	def self.find_by_email(email_to_save)
		@@all_user.each { |user|  
			if user.email == email_to_save
				
				return "Voici l'age du User trouvé : #{user.age}"
			end
			}

			puts "aucun utilisateur n'a cet email"	
			return false
	end		 
end

puts "end of file"