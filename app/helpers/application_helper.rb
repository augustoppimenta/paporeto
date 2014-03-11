module ApplicationHelper


  def time_to_read(text)
    time = text.split.size / 180.0
    distance_of_time_in_words(time.minutes)
  end

  def nav_status(controller)
    if controller == params[:controller]
      'active'
    end
  end

  def nav_status_users(controller, action)
    if controller == params[:controller] and action == params[:action]
      'active'
    end
  end

end
