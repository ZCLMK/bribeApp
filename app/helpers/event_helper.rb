module EventHelper
  def some_events_from_category(limit, id)
	return Event.where(category_id: id)
  end 
end
