class KaraokeController < ApplicationController
  
  def show
  
  end

  private
  def set_page_title
    @page_title = 'Karaoke available four nights a week or for private parties!'
  end

  def selected_navigation
    :karaoke
  end
end
