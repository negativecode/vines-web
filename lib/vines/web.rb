require 'fileutils'
require 'vines/web/version'
require 'vines/web/command/init'
require 'vines/web/command/install'

module Vines
  module Web
    def self.paths
      js  = File.expand_path('../../../app/assets/javascripts', __FILE__)
      css = File.expand_path('../../../app/assets/stylesheets', __FILE__)
      [js, css]
    end
  end
end
