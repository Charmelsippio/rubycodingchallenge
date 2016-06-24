#TV Coding Challenge

class TV
 attr_accessor :change_channel, :volume_contorl, :mute_sound, :on_off

	def intialize(value1, value2, value3, value4)
		@channel_input = value1
		@volume_level = value2
		@sound = value3
		@tv_On = value4
	end

	# def on_off
	# 		puts "TV on."
	# 	end

	# end


	def change_channel
		print "Channel choice: "
			channel_choice = gets.chomp.to_i
				if channel_choice >= 1 || channel_choice <= 100
						puts "Now watching channel #{channel_choice}"
				elsif channel_choice < 1 || channel_choice >= 100
					puts "To access additional channels, please contact your cable service provider. Please select another channel."
					channel_choice = gets.chomp.to_i
					change_channel
				end
	end

	def volume_control (value2)
		volume_level = gets.chomp.to_i
			puts "Your volume is #{volume_level}"
		if volume_level <=0
			puts "Muted"
		elsif volume_level <= 32
			puts "Volume max"
		else volume_level <= 1 || @volume_level >=32
			puts "Voulme is at #{volume_level}"
		end
	end

	def mute_sound
		if volume_level <=0
			puts "Muted"
		end
		
end

idiot_box = TV.new
idiot_box.change_channel
idiot_box.volume_control(3)
