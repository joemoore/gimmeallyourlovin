set :use_sudo, false

set :application, "gimme"

default_run_options[:pty] = true
set :repository,  "git@github.com:joemoore/gimmeallyourlovin.git"
set :user, "josephm"
set :branch, "master"
set :deploy_via, :copy

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/josephm/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, :git

role :app, "gimmeallyourlovin.com"
role :web, "gimmeallyourlovin.com"
# role :db,  "", :primary => true