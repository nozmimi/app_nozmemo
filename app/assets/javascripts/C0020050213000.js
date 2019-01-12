// アプリケーションID
var APP_ID = 'bb86c86ee575b3adfa4930ee0f17a74de14e57e6';

var APP_LANG = 'j'

// API URL
var API_URL = "http://api.e-stat.go.jp/rest/2.1/app/json/getStatsData"

// 統計表ID
var statsDataId ="0003199765"

//コード
var cdCat01 ="#A03503"


var GET_URL = API_URL;
GET_URL += "?appId=" + escape(APP_ID);
GET_URL += "&lang" + escape(APP_LANG);
GET_URL += "&statsDataId=" + escape(statsDataId);
// GET_URL += "&cdCat01=" + escape(cdCat01);
console.log(GET_URL);


$.getJSON(GET_URL, function(jsonData){})
 .success(function(jsonData) {
    console.log(jsonData);

    var statisticalData = jsonData['GET_STATS_DATA']['STATISTICAL_DATA']['DATA_INF']['VALUE'];

    (window.onload = function() {
      for(i=0; i<statisticalData.length; i++){
          var demo_text = statisticalData[i]['@area'];

          console.log(demo_text);

          var para = document.createElement("p");
          var element = document.getElementById("demo");
          element.appendChild(para);

          var node = document.createTextNode(demo_text);
          para.appendChild(node);
      }
    })();
  });
