require 'open-uri'

module MicroCMS
  class Generator < Jekyll::Generator
    def generate(site)
      pp(ENV)
      # コンテンツを取得
      result = JSON.load(open(site.config['microcms_api'],
        "X-API-KEY" => ENV["MICROCMS_KEY"]
      ).read)

      # レイアウト側で使えるようにsite.dataに値を入れておく
      site.data.merge!({ "photos" => result['contents'] })
    end
  end
end