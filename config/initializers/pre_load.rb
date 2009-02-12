require 'karaoke_night'
class KaraokeNight < ActiveRecord::Base
  nights = KaraokeNight.find(:all, :order => 'wday ASC')
  Schedule = Array.new(7) do |i|
    nights.find {|n| i == n.wday}
  end
end
