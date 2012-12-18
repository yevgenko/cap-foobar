set :application, "foobar"
set :repository,  "git@github.com:yevgenko/cap-foobar.git"
set :scm, "git"
set :branch, "master"

server "aegir01", :app, :web, :db, :primary => true
set :user, "wik"  # The server's user for deploys
# ssh_options[:forward_agent] = true
set :deploy_to, "/home/wik/cap-foobar"

namespace :deploy do

  task :finalize_update, :except => { :no_release => true } do
    transaction do
      # do nothing
    end
  end

  task :migrate do
    # do nothing
  end

  task :restart, :except => { :no_release => true } do
    # do nothing
  end
end
