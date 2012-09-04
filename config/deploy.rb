set :application, "ccstudiosinc"
set :repository, "git@ramon.nupoison.com:#{application}.git" 
set :scm, :git
set :use_sudo, false
set :port, 10022 

desc "Ramon Development Deploy - http://dev.continentalstudiosinc.com"
task :dev do
	role :web, "javier-csi.nupoison.com"
  set :user, 'continentalstudiosinc'
	set :password, 'hM5f5i3qc4S18PJ'
  set :repository,  repository
  set :keep_releases, 25
  set :deploy_to, "~/sites/development/"
  set :deploy_via, :export
end

desc "Javier Production Deploy - http://www.continentalstudiosinc.com"
task :prod do
	role :web, "ramon.nupoison.com"
  set :user, 'ccstudiosinc'
	set :password, 'S1gSz61L9YFW0JV'
  set :repository,  repository
  set :keep_releases, 25
  set :deploy_to, "/home/mike/staging/dontsweatit"
  set :deploy_via, :export
end

namespace :deploy do
	task :start do ; end
  task :stop do ; end
	task :restart do ; end
	task :finalize_update do ; end

  task :symlink, :roles => :web do
    run "ln -nfs #{release_path} #{current_path}"
  end
end
