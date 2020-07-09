require 'open-uri'

module MicroCMS
  class Generator < Jekyll::Generator
    def generate(site)
      p('MICROCMS_KEY')
      
      p(site.env.MICROCMS_KEY)
      
    end
  end
end