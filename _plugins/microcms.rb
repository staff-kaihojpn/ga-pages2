require 'open-uri'

module MicroCMS
  class Generator < Jekyll::Generator
    def generate(site)
      # コンテンツを取得
      result = JSON.load(open(site.config['microcms_api'],
        "X-API-KEY" => ENV["MICROCMS_KEY"]
      ).read)

      # レイアウト側で使えるようにsite.dataに値を入れておく
      site.data.merge!({ "photos" => result['contents'] })

      # 表紙を設定
      cover_image = result['contents'][0]['image']['url']
      site.config['accent_image']=cover_image if cover_image
    end
  end
end