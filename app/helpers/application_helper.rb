# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def next_karaoke_night
    link_to("Monday night at Donericks Pub House @ 9PM.", karaoke_path)
  end
end
