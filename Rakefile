task :generate do
  system "bundle exec middleman build"
end

task sync: :generate do
  system "rsync --exclude '.DS_Store' -av build/ ../mongoid.github.com/"
end

task :default => :generate
