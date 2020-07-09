require 'open-uri'

module MicroCMS
  class Generator < Jekyll::Generator
    def generate(site)
      p('MICROCMS_KEY')
      
      #pp(site.config)
      pp(ENV)
      p(ENV['MICROCMS_KEY'])
      
    end
  end
end