module EventHelper
  def some_events_from_category(limit, id)
	return Event.where(category_id: id)
  end 
  
  def display_default_image(param)
	  	if param.image?
	  	return "param.image.thumb.url"
	  else 
	  	return "https://picsum.photos/200/300/?random"
	  end 
  end
end
