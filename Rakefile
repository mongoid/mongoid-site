require 'yaml'
require 'ostruct'
require 'fileutils'

require 'bundler/setup'

require 'yaml'
require 'ostruct'

# using inline yaml for now
Settings = OpenStruct.new(YAML.load_file("./config.yaml"))

require 'nanoc3/tasks'

current_time = Time.now

desc "Generates the output files (backing up any existing output directory if found)"
task :generate do
  local_path = File.expand_path(Settings.deploy_local_path)
  backup_path = File.expand_path(Settings.deploy_backup_path)

  if File.exists?(local

    # use an incremental backup folder if 2 deploys are on the same minute
    inc = 1
    saved = false
    while !saved
      backup_path = "#{backup_path}/#{current_time.strftime('%Y-%m-%d-%H-%M')}-#{inc}"
      if File.exists?(backup_path)
        inc += 1
      else
        FileUtils.mkdir_p(backup_path)
        FileUtils.mv(local_path, backup_path)
        saved = true
      end
    end
  end

  # create and remove the local path
  FileUtils.mkdir_p(local_path)
  FileUtils.rmdir(local_path)

  # generate the new one
  puts `nanoc3 compile`
end

desc "Deploying to github using git push"
task :deploy_to_github => :generate do
  local_path = File.expand_path(Settings.deploy_local_path)

  command = []

  command << "cd #{local_path}"
  command << "git init"
  command << "git add ."
  command << "git commit -m 'regenerating'"
  command << "git push -f #{Settings.deploy_github_repo} master"

  puts "Running: "
  puts command.join("\n  ")

  exec(command.join(" && "))
end