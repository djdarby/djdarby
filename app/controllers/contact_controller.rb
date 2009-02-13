class ContactController < ApplicationController
  caches_page :show

  def show
  end

private
  def set_page_title
    @page_title = 'Contact'
  end

  def set_selected_navigation
    @selected_navigation = :contact
  end
end
