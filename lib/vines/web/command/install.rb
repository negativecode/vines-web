module Vines
  module Web
    module Command
      class Install
        def run(opts)
          raise 'vines-web install <dir>' unless opts[:args].size == 1

          dir = opts[:args].first.downcase
          dir = File.expand_path(dir)
          Dir.mkdir(dir) unless File.exists?(dir)

          web = File.expand_path("../../../../../public", __FILE__)
          FileUtils.cp_r(Dir.glob("#{web}/*"), dir)
          puts "Web assets installed: #{dir}"
        end
      end
    end
  end
end
