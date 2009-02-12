set :application, "djdarby"
 
set :deploy_to, "/var/www/djdarby"
 
set :scm, :git
set :repository, "git@github.com:mattyoho/djdarby.git"
set :branch, "master"
set :deploy_via, :remote_cache
 
set :user, 'mbyoho'
set :ssh_options, { :forward_agent => true }
 

role :app, "djdarby.com"
role :web, "djdarby.com"
role :db,  "djdarby.com", :primary => true
 
namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    #run "touch #{current_path}/tmp/restart.txt"
    run "touch #{deploy_to}/current/tmp/restart.txt"
  end
 
  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end

  desc "Load bootstrap data"
  task :bootstrap, :depends => [:deploy] do
    run "rake db:fixtures:load RAILS_ENV=production -f #{deploy_to}/current/Rakefile"
  end
end

