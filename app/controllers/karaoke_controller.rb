class KaraokeController < ApplicationController
 
  caches_page :show 

  def show
  end

  private
  def set_page_title
    @page_title = 'Karaoke available four nights a week or for private parties!'
  end

  def set_selected_navigation
    @selected_navigation = :karaoke
  end
end
