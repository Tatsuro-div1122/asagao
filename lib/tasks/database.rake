namespace :db do
  desc "Rebuild the developent databse from scratch"
  task :rebuild => :environment do
    sh "rm -f db/development.sqlite3"
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
  end
end