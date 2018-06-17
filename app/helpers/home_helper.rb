module HomeHelper

	def popular(events, minimum)

			popular_events = []
			
				events.each do |event|
					if event.attendees.count > minimum
						popular_events << event 
					end 
			end
			return popular_events
			
	end 
		
end
