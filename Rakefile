require 'rake'
require 'rake/clean'
require 'rake/sprocketstask'

CLOBBER.include('pkg')

directory 'pkg'

desc 'Build distributable packages'
task :build => [:assets, :pkg] do
  system 'gem build vines-web.gemspec && mv vines-*.gem pkg/'
end

Rake::SprocketsTask.new do |t|
  t.environment = Sprockets::Environment.new
  t.environment.append_path 'app/assets/javascripts'
  t.environment.append_path 'app/assets/stylesheets'
  t.environment.js_compressor = :uglifier
  t.output = "public/assets"
  t.assets = %w[application.js vendor.js lib.js application.css]
end

task :default => [:clobber, :build]
