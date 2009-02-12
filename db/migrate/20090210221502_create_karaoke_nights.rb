class CreateKaraokeNights < ActiveRecord::Migration
  def self.up
    create_table :karaoke_nights do |t|
      t.integer :wday
      t.string :day_string
      t.string :venue
      t.string :start_time
      t.string :end_time
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :map_url

      t.timestamps
    end
  end

  def self.down
    drop_table :karaoke_nights
  end
end
