require 'nanoc3/tasks'

task :finish do
  files = Dir.glob('output/*')
  dir = "../mongoid.github.com/"
  Dir.mkdir(dir) unless File.exists?(dir)
  cp_r(files, dir)
  rm_f("output/")
end

