# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def next_karaoke_night
    link_to("Tonight at Crown Sports Lounge @ 9PM.", karaoke_path)
  end
end
