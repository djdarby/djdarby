require 'karaoke_night'
class KaraokeNight < ActiveRecord::Base
  begin
    nights = KaraokeNight.find(:all, :order => 'wday ASC')
  rescue
    nights = []
  end
  Schedule = Array.new(7) do |i|
    nights.find {|n| i == n.wday}
  end
end
