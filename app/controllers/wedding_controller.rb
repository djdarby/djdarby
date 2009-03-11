class WeddingController < ApplicationController
  caches_page :show

  def show
  end

private
  def set_page_title
    @page_title = 'Elegant, lively, memorable wedding receptions'
  end

  def set_selected_navigation
    @selected_navigation = :weddings
  end
end
