# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def next_karaoke_night
    link_to("Tonight at Crown Sports Lounge @ 9PM.", karaoke_path)
  end

  def navigation_css_class(section)
    unless section.is_a? Symbol
      section = section.to_s.downcase.to_sym
    end
    section == @selected_navigation ? 'current' : ''
  end
end
