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

	def is_paste?
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


end


binding.pry
puts "end of file"