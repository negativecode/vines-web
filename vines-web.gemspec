require './lib/vines/web/version'

Gem::Specification.new do |s|
  s.name         = 'vines-web'
  s.version      = Vines::Web::VERSION
  s.summary      = %q[A web chat client for the Vines XMPP chat server.]
  s.description  = %q[Useful for testing the server's BOSH support.]

  s.authors      = ['David Graham']
  s.email        = %w[david@negativecode.com]
  s.homepage     = 'http://www.getvines.org'
  s.license      = 'MIT'

  s.files        = Dir['[A-Z]*', 'config.ru', 'vines-web.gemspec', '{app,bin,lib,public}/**/*'] - ['Gemfile.lock']
  s.executables  = %w[vines-web]
  s.require_path = 'lib'

  s.add_development_dependency 'coffee-script', '~> 2.2.0'
  s.add_development_dependency 'coffee-script-source', '~> 1.6.2'
  s.add_development_dependency 'sass', '~> 3.2.9'
  s.add_development_dependency 'sprockets', '~> 2.10.0'
  s.add_development_dependency 'uglifier', '~> 2.1.1'
  s.add_development_dependency 'rack', '~> 1.5.2'
  s.add_development_dependency 'rake', '~> 10.1.0'

  s.required_ruby_version = '>= 1.9.3'
end
