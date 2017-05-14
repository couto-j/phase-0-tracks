37 lines (23 sloc)  420 Bytes
module Shout

	def yelling_happy(words)
		puts words + "!"
	end

	def yelling_mad(words)
		puts words + "!" 
	end
end

class Birthday
	include Shout
end

class Greeting
	include Shout
end

class Stop
	include Shout
end


birthday = Birthday.new
birthday.yelling_happy('Happy Birthday')

greeting = Greeting.new
greeting.yelling_happy('Hello. It is SO nice to see you!')

stop = Stop.new
stop.yelling_mad('Do NOT do that!')