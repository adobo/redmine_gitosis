namespace :gitosis do
  desc "update gitosis repositories"
  task :update_repositories => [:environment] do
    projects = Project.active
    puts "Updating repositories for projects #{projects.join(' ')}"
    Gitosis.update_repositories(projects)
  end
  desc "fetch commits from gitosis repositories"
  task :fetch_changes => [:environment] do
    Repository.fetch_changesets
  end

end