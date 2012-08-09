require 'capistrano/ext/multistage'


default_run_options[:pty] = true
set :application, "Candies"
set :scm, :git
set :repository,  "git@github.com:whitescape/candies.git"
set :user, "hosting_grigl"
set :use_sudo, false
set :deploy_via, :copy
set :branch, "master"
set :ssh_options, { :forward_agent => true }

set :stages, ["staging"]
set :default_stage, "staging"