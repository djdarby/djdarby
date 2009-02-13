require File.expand_path(File.dirname(__FILE__) + "/../../config/environment")

namespace :db do
  desc "Load app bootstrap data from fixtures into #{ENV['RAILS_ENV']} database"
  task :bootstrap => :environment do
    require 'active_record/fixtures'  
    path = File.join(RAILS_ROOT, 'db', 'bootstrap', '*.{yml,csv}')
    bootstrap_fixtures = Dir.glob(path).collect { |file|
      File.basename(file, '.*')
    }
    ActiveRecord::Base.establish_connection(ENV['RAILS_ENV'])
    bootstrap_fixtures.each do |fixture|
      Fixtures.create_fixtures('db/bootstrap',  fixture)
    end
  end
end
