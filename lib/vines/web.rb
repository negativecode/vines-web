require 'fileutils'
require 'vines/web/version'
require 'vines/web/command/init'
require 'vines/web/command/install'

module Vines
  module Web
    # Return javascript and stylesheet asset paths to be added to a sprockets
    # environment. This allows the lib and vendor javascript bundles to be
    # shared by other apps.
    #
    #   env = Sprockets::Environment.new
    #   Vines::Web.paths.each {|path| env.append_path path }
    #
    # Returns an Array of String paths.
    def self.paths
      root = File.expand_path('../../..', __FILE__)
      js = '%s/app/assets/javascripts' % root
      css = '%s/app/assets/stylesheets' % root
      [js, css]
    end
  end
end
