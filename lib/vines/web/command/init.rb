module Vines
  module Web
    module Command
      class Init
        def run(opts)
          raise 'vines-web init <domain>' unless opts[:args].size == 1
          raise 'vines gem required: gem install vines' unless vines_installed?

          domain = opts[:args].first.downcase
          base = File.expand_path(domain)

          `vines init #{domain}` unless File.exists?(base)

          web = File.expand_path('../../../../../public', __FILE__)
          FileUtils.cp_r(Dir.glob("#{web}/*"), "#{domain}/web")
          puts "Web assets installed: #{domain}"

          `type open && open http://localhost:5280/`
        end

        private

        def vines_installed?
          require 'vines/version'
          true
        rescue LoadError
          false
        end
      end
    end
  end
end
