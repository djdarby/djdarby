namespace :cache do
  namespace :clear do
    desc 'Removes the cached version of the home page (which has info that goes stale).'
    task :home => :environment do
      `rm -f #{RAILS_ROOT}/public/index.html`
    end
    desc 'Removes the cached version of all page-cached pages.'
    task :all_pages => :environment do
      Dir.glob(File.join(RAILS_ROOT, 'public/*.html')).collect { |with_path| 
        File.basename(with_path)
      }.reject { |file_name|
        file_name =~ /[0-9]+\.html/
      }.each { |file_to_clear|
        puts `rm -f #{RAILS_ROOT}/public/#{file_to_clear}`
      }
    end
  end
end
