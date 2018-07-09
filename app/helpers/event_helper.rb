module EventHelper
  def some_events_from_category(limit, id)
	return Event.where(category_id: id)
  end 
  
   def display_default_image_show(param)
	  	if param.image?
	  	return "param.image.thumb.url"
	  	else 
	  	return "https://source.unsplash.com/random/#{rand(800..820)}x#{rand(620..650)}"
	  	end 
  end
  
  def display_default_image(param)
	  	if param.image?
	  	return "param.image.thumb.url"
	  	else 
	  	return "https://source.unsplash.com/random/#{rand(400..420)}x#{rand(420..450)}"
	  	end 
  end
end
