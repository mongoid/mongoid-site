require 'nanoc3/tasks'

task :prep do
  exec("nanoc3 compile")
end

task :fin do
  files = Dir.glob(File.expand_path('./output/**'))
  puts files
  dir = File.expand_path("../mongoid.github.com/")

  Dir.mkdir(dir) unless File.exists?(dir)

  cp_r(files, dir)

  puts "Moved the files from output/ to" + dir + " and deleted output/"
end

