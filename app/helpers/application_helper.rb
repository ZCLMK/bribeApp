module ApplicationHelper
  def formatted_time(str)
    return   "#{str.split('')[0..1].join('')}h#{str.split('')[3..4].join('')}"
  end

  def formatted_date(date)
    return date.strftime("%d/%m/%Y")
  end
  def has_url(param)
    return !param.imageurl.blank?
  end 
  
  def has_image(param)
	return !param.image.blank?
  end 
end
