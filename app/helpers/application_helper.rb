module ApplicationHelper
  def next_karaoke_night
    day_of_week = Date.today.wday
    until next_night = KaraokeNight::Schedule[day_of_week] do
      day_of_week = (day_of_week + 1) % KaraokeNight::Schedule.length
    end
    what_day = next_night.tonight? ? 'Tonight' : "Next #{next_night.day_string}"
    link_to("#{what_day} at #{next_night.venue} @ #{next_night.start_time}.", karaoke_path)
  end

  def navigation_css_class(section)
    unless section.is_a? Symbol
      section = section.to_s.downcase.to_sym
    end
    section == @selected_navigation ? 'current' : ''
  end
end
