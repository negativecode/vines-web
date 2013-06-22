require 'rake'
require 'rake/clean'

CLOBBER.include('pkg', 'public/assets')

directory 'pkg'

desc 'Build distributable packages'
task :build => [:assets, :pkg] do
  system 'gem build vines-web.gemspec && mv vines-*.gem pkg/'
end

desc 'Compile web assets'
task :assets do
  require 'sprockets'
  env = Sprockets::Environment.new
  env.cache = Sprockets::Cache::FileStore.new(Dir.tmpdir)
  env.append_path 'app/assets/javascripts'
  env.append_path 'app/assets/stylesheets'
  env.js_compressor = :uglifier

  assets = %w[application.js vendor.js lib.js application.css]
  assets.each do |asset|
    env[asset].write_to "public/assets/#{asset}"
  end
end

task :default => [:clobber, :build]
