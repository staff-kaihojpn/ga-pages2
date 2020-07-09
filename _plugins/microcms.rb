require 'open-uri'

module MicroCMS
  class Generator < Jekyll::Generator
    def generate(site)
      p(site.env.MICROCMS_KEY)
      =begin
      microcms_key = jekyll.environment == "production" ? secrets.MICROCMS_KEY : process.env.MICROCMS_KEY
      # コンテンツを取得
      result = JSON.load(open("https://kaihojpn.microcms.io/api/v1/photo",
        "X-API-KEY" => ""
      ).read)

      # レイアウト側で使えるようにsite.dataに値を入れておく
      site.data.merge!({ "photos" => result['contents'] })
      =end
    end
  end
end