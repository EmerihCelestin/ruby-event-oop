require 'time'

class Event
	attr_accessor :start_date, :duration, :title, :attendess

	def initialize(start,durer,note,attendess_save)
		@start_date = Time.parse(start)
		@duration = durer
		@title = note
		@attendess = attendess_save
	end	

	def postpone_24
		 puts @start_date = @start_date + (24*60*60) 
	end	
end


binding.pry
puts "end of file"