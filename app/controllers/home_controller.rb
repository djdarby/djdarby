class HomeController < ApplicationController
  ENDORSEMENT = 'Darby does an amazing job of keeping things fun and classy. His attention to detail is incredible!'
  ENDORSER = 'Amanda L, Hilliard'

  def index
    @today = 'Wednesday'
  end
end
