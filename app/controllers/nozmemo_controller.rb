class NozmemoController < ApplicationController
  def index
  end

  def memo
    # アプリケーションID
    api_appId = "bb86c86ee575b3adfa4930ee0f17a74de14e57e6"
    api_lang = "j"
    #API URL
    api_url = "https://api.e-stat.go.jp/rest/2.1/app/json/getStatsData"
    # 統計表ID
    statsDataId ="C0020050213000"
    #コード
    # cdCat01 ="#A03503"
    api_limit = "10"
    
    api_url = api_url;
    api_url += "?appId=" + api_appId
    api_url += "&lang" + api_lang
    api_url += "&statsDataId=" + statsDataId
    #api_url += "&cdCat01=" + escape(cdCat01)
    api_url += "&limit=" + api_limit
    p api_url

    require 'net/http'
    require 'uri'
    require 'json'
    require 'pp'
    
    uri = URI.parse(api_url)
    json = Net::HTTP.get(uri) #NET::HTTPを利用してAPIを叩く
    
    jsonp = JSON.parse(json, symbolize_names: true)
    results = jsonp[:GET_STATS_DATA][:STATISTICAL_DATA][:CLASS_INF][:CLASS_OBJ]
    # pp results
    # render plain:results
    puts results.length
    
    results.each do |result|
      puts result.length
    end
    
  end
  
end
