require 'nanoc3/tasks'

task :prep do
  exec("nanoc compile")
end

task :fin do
  files = Dir.glob('output/*')

  dir = "../mongoid.github.com/"

  Dir.mkdir(dir) unless File.exists?(dir)

  cp_r(files, dir)

  rm_rf('output/')

  puts "Moved the files from output/ to" + dir + " and deleted output/"
end

