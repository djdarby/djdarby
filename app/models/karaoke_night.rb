class KaraokeNight < ActiveRecord::Base
  def tonight?
    Date.today.wday == self.wday
  end
end
