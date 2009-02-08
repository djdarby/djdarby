class HomeController < ApplicationController
  ENDORSEMENT = 'Darby does an amazing job of keeping things fun and classy. His attention to detail is incredible!'
  ENDORSER = 'Amanda, Hilliard'

  def show
  end

  private
  def set_page_title
    @page_title = 'Wedding receptions, events, karaoke.'
  end

  def set_selected_navigation
    @selected_navigation = :home
  end

end
