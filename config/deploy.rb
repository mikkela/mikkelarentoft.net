# RVM bootstrap
$:.unshift(File.expand_path("~/.rvm/lib"))
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.2-p290'
set :rvm_type, :system

# bundler bootstrap
require 'bundler/capistrano'

# main details
set :application, "mikkelarentoft.net"
role :web, "omega.mikadocs.net"
role :app, "omega.mikadocs.net"
role :db,  "omega.mikadocs.net", :primary => true

# server details
default_run_options[:pty] = true
ssh_options[:forward_agent] = true
set :deploy_to, "/home/mikkelarentoft.net/apps/#{application}"
set :deploy_via, :remote_cache
set :user, "mikkelarentoft.net"
set :use_sudo, false
set :keep_releases, 5

# repo details
set :scm, :git
#set :scm_username, "passenger"
set :repository, "git://github.com/mikkela/mikkelarentoft.net.git"
set :branch, "production"
set :git_enable_submodules, 1

# tasks
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_releases => true } do
    run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end

  task :symlink_shared, :roles => :app do
    #run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end

task :symlink_database_yml do
  run "rm #{release_path}/config/database.yml"
  run "ln -sfn #{shared_path}/config/database.yml #{release_path}/config/database.yml"
end

after 'deploy:update_code', 'deploy:symlink_shared'
after 'bundle:install', 'symlink_database_yml'
