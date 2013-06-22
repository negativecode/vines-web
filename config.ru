require 'sprockets'

use Rack::Static, urls: ['/images'], root: 'public', index: 'index.html'

map '/assets' do
  environment = Sprockets::Environment.new
  environment.append_path 'app/assets/javascripts'
  environment.append_path 'app/assets/stylesheets'
  run environment
end
