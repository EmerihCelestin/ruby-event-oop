require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendees 

	def initialize(start,durer,note,attendees_save)
		@start_date = Time.parse(start)
		@duration = durer
		@title = note
		@attendees = attendees_save
	end	

	def postpone_24
		 puts @start_date = @start_date + (24*60*60) 
	end

	def end_date
		puts @start_date = @start_date + @duration*60
	end	

	def is_past?
		return @start_date < Time.now 
	end 

	def is_futur?
		return @start_date > Time.now 
	end 

	def is_soon?
		return @start_date < Time.now + (30*60)
	end 

	def to_s
		puts ">Titre : #{@title}" 
		puts ">Date de début : #{@start_date}"
		puts ">Durée : #{@duration}"
		puts ">Invités : #{@attendees.join(', ')}"
		
	end

	def age_analysis
		age_array = []
		average = 0

		@attendees.each { |attendee|
		 age_array << attendee.age
		 average = average + attendee.age
		   }

		average = average / @attendees.length

		puts "Voici les âges des participants : "
		puts age_array.join(", ")
		puts "La moyenne d'âges est de #{average} ans"

	end	
		 

end
 
 class WorkEvent < Event
 	 attr_accessor :location
 	 	def initialize(start, durer, note, attendees_save, location)
    @location = location
 	 		super(start, durer, note, attendees_save)
 	 	end	

 	def is_event_acceptable?
 		if @attendees.length > 3 || @duration > 60
 			puts "Cette réunion ne respecte pas nos bonnes pratiques !"

 			return false
 		else 
 			puts "Cette  réunion est OK."	
 			return true
 		end
 	end 
 end	

puts "end of file"