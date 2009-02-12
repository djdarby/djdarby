require File.dirname(__FILE__) + '/../test_helper'

class KaraokeNightTest < ActiveSupport::TestCase
  should_have_db_column :day
  should_have_db_column :venue
  should_have_db_column :start_time
  should_have_db_column :end_time
  should_have_db_column :street
  should_have_db_column :city
  should_have_db_column :state
  should_have_db_column :zip
  should_have_db_column :phone
  should_have_db_column :map_embed_code
end
