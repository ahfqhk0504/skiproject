<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
#slopeWrap .title{
	position: relative;
    height: 28px;
}
#slopeWrap .subTitle{
	font-size: 11px;
	color: #9a9a9a;
	margin-left: 30px;
}
#slopeWrap .slopeTable{
	margin-top: 30px;
	width: 100%;
}
#slopeWrap .slopeTable thead th{
	padding: 8px 5px;
	color: #fff;
	border: 1px solid #242a37;
	background: #353d4e;
}
#slopeWrap .slopeTable thead th.tableTitle{
	background: #505868;
}
#slopeWrap .slopeTable tbody th{
	background: #f8f9fa;
	padding: 8px 5px 7px;
	color: #333;
	border: 1px solid #d9dbdb;
}
#slopeWrap .slopeTable tbody th.tableTitle{
	font-weight: normal;
	font-size: 12px;
}
#slopeWrap .slopeTable tbody td{
	padding: 8px 5px 7px;
	color: #707070;
	text-align: center;
	border: 1px solid #d9dbdb;
	font-size: 12px; 
}
#slopeWrap .slopeTable tr.bt th,
#slopeWrap .slopeTable tr.bt td{
	border-top: 2px solid #333;
}
#slopeWrap .slopeTable th{
	font-size: 13px;
	font-weight: bold;
	text-align: center; 
}
#slopeWrap .slopeTable td{
	text-align: center;
	border: 1px solid #d9dbdb;
	font-size: 12px; 
}
#slopeWrap thead, 
#slopeWrap tr, 
#slopeWrap th, 
#slopeWrap td, 
#slopeWrap tbody{
	margin: 0px;
	padding: 0px;
	border: 0px;
	text-align: left;
	font-size: 13px;
}
#slopeWrap .mapButtonWrap{
	background: #0C4B70;
}
#slopeWrap .mapButtonWrap p.menu{
	float: left;
	border-left: 1px solid #333;
	margin: 0 2px;
}
#slopeWrap .mapButtonWrap p.menu.first{
	border: 0;
}
#slopeWrap .mapButtonWrap p.menu .title_eng{
	font-weight: bold;
	color: #fff;
	font-size: 12px;
}
#slopeWrap .mapButtonWrap p.menu .title_kor{
	color: #637C96;
	font-weight: 700;
	font-size: 14px;
}

#slopeWrap .mapButtonWrap p.menu .button{
	width: 24px;
    height: 16px;
    font-size: 10px;
    font-weight: 700;
    background: black;
    color: #fff;
    text-align: center;
    display: block;
    float: left;
    margin-left: 3px;
    padding-top: 1px;
    cursor: pointer;
}
#slopeWrap .slopeTable span{
	display: block;
	width: 50px;
	height: 20px;
	margin: auto;
}
#slopeWrap .slopeTable span.open{
	background: #0C4B70;
	border: 1px solid #0C4B70;
	color: #fff;
	font-weight: 600;
}
#slopeWrap .slopeTable span.close{
	color: #fff;
	background: #c0c0c0;
	border: 1px solid #c0c0c0;
	font-weight: 600;
}
#slopeWrap table{
	margin: 0;
	padding: 0;
	border: 0;
	border-spacing: 0px;
	border-collapse: collapse;
	font-size: 12px;
	text-align: left;
}
#slopeWrap table caption{
	width: 0;
	font-size: 0;
	line-height: 0;
	height: 0;
	overflow: hidden;
}
#slopeWrap  hr{
	margin: 40px 0 35px;
    width: 100%;
    border: 0px solid #010101;
    color: #010101;
    height: 3px;
    background: #010101;
}
#slopeWrap  hr.ski{
	margin: 50px 0 30px;
    height: 1px;
    background: #d9dbdb;
}
#slopeWrap .contentTitle{
	margin-top: 35px;
    padding-bottom: 15px;
    color: #333;
    font-size: 18px;
    font-weight: bold;
}
#slopeWrap .content{
	font-size: 12px;
	text-align: left;
}
#slopeWrap .map{
	position: relative;
	width:750px;
	height: 650px;
	border: 1px solid #333;
	margin: 30px auto 0;
}
#slopeWrap .map .mapWrap{
	width:750px;
	height: 550px;
}
#slopeWrap #reWeather{
	float: right;
}
#slopeWrap .map .mapButtonWrap{
	border: 1px solid #333;
	float: left;
	width: 750px;
	height: 100px;
	z-index: 9999; 
}
#slopeWrap{
	position: relative;
    margin-left: 270px;
    width: 866px;
    padding-bottom: 90px;
}
#slopeWrap div{
	display:block;
}
#slopeWrap p{
	margin:0;
	padding:0;
}
</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$(".mapButtonWrap .menu .button").mouseleave(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35262210-067c3098-0057-11e8-86a9-9bee0d1e4bbc.jpg");
		});
		//제우스버튼
		$(".zeus1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373882-ebf62e20-01e3-11e8-86e0-3195a947bedf.jpg");
		});
		$(".zeus2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373889-f1a523bc-01e3-11e8-9ca4-f11cff133797.jpg");
		});
		$(".zeus3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373891-f534e2c4-01e3-11e8-9db1-cce4044b51af.jpg");
		});
		$(".zeus3-1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373897-f9715098-01e3-11e8-93b5-08d48b59cbfc.jpg");
		});
		
		//빅토리아 버튼
		$(".victoria1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373900-fb93d01c-01e3-11e8-84c3-999e3fda6d5e.jpg");
		});
		$(".victoria2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373901-fe1365c8-01e3-11e8-98fa-41bb8f6889a1.jpg");
		});
		$(".victoria3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373916-03b01210-01e4-11e8-81b4-3f4dff86136f.jpg");
		});
		
		//헤라 버튼
		$(".hera1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373917-03d9c25e-01e4-11e8-81bb-e1ebb286773e.jpg");
		});
		$(".hera2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373918-040d7022-01e4-11e8-9bd0-cc3df7485d0e.jpg");
		});
		$(".hera3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373919-0437a3f6-01e4-11e8-8f1a-0a49ac959ed3.jpg");
		});
		
		//아폴로 버튼
		$(".apollo1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373920-046482c2-01e4-11e8-83e8-f02d4dc169e6.jpg");
		});
		$(".apollo2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373921-048c44d8-01e4-11e8-9a9a-acc7c24a215f.jpg");
		});
		$(".apollo3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373922-04b2641a-01e4-11e8-85b6-92fbc10a81e0.jpg");
		});
		$(".apollo4").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373923-04fd7e28-01e4-11e8-935a-018dcc1541ec.jpg");
		});
		$(".apollo5").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373924-0524d7fc-01e4-11e8-8992-5950e430e22f.jpg");
		});
		$(".apollo6").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373925-054d149c-01e4-11e8-8d51-7058f3c25b78.jpg");
		});
		
		//아테나 버튼
		$(".athena1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373926-0575e82c-01e4-11e8-8973-c9b1df726ced.jpg");
		});
		$(".athena2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373927-059aa8ec-01e4-11e8-8f77-c81c586b0ea0.jpg");
		});
		$(".athena3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373928-05d6c2aa-01e4-11e8-8ace-74571313302a.jpg");
		});
		$(".athena3-1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373906-025fe228-01e4-11e8-8ada-981ee619d80e.jpg");
		});
		
		//눈 썰매장 버튼
		$(".sled1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373907-028717a8-01e4-11e8-96eb-72b796545e71.jpg");
		});
		
		//Terrain Park 버튼
		$(".terrainPark1").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373908-02ae9012-01e4-11e8-93e6-d2f7d0576c89.jpg");
		});
		$(".terrainPark2").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373909-02e866c0-01e4-11e8-9cf9-4bf9f74b30cc.jpg");
		});
		$(".terrainPark3").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373911-032bc4c4-01e4-11e8-9698-90aa782e9ebd.jpg");
		});
		$(".terrainPark4").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373912-035b723c-01e4-11e8-9b38-277217ca46e0.jpg");
		});
		$(".terrainPark5").mouseenter(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35373914-0386af74-01e4-11e8-9340-b35c10acd101.jpg");
		});
		
		
		$("#reWeather").click(function(){
			
			var weatherName="";
			var weatherLat="";
			var weatherLon="";
			$.ajax({
				url : "/skiproject/slope/weatherInfo",
				type : "GET",
				dataType : "json",
				success: function(data){
					$(".slopeTable.weather tbody tr").remove();
					$.each(data.weatherList, function(index, weatherDTO){
						weatherName = weatherDTO.weatherName;
						weatherLat = weatherDTO.weatherLat;
						weatherLon = weatherDTO.weatherLon;
						
						reWeather(weatherName,weatherLat, weatherLon);
					});
				}
			});
			
		});
	});
	
	function reWeather(weatherName,weatherLat, weatherLon){
		console.log("weatherLat = "+weatherLat+", weatherLon"+weatherLon);
		var weatherMain="";
		var weatherTemp="";
		var weatherHumidity="";
		var weatherWspd="";
		var weatherIcon="";
		$.ajax({
			url:"http://api.openweathermap.org/data/2.5/weather",
			jsonp: "callback",
			dataType: "jsonp",
			data: {	'lat': weatherLat,
					'lon' : weatherLon,
					'APPID' : "0e5f521c3a02fef696fd7cb59646a610"
			},
			success: function(data){
				console.log(data);
				weatherTemp = (data.main.temp-273.15).toFixed(2);
				weatherHumidity = data.main.humidity;
				weatherWspd = data.wind.speed;
				weatherMain = data.weather[0].main;
				weatherIcon = data.weather[0].icon;
				$.ajax({
					url: "/skiproject/slope/reWeather",
					type: "POST",
					data: {"weatherTemp":weatherTemp,
							"weatherHumidity":weatherHumidity,
							"weatherWspd":weatherWspd,
							"weatherMain": weatherMain,
							"weatherIcon" : weatherIcon,
							"weatherName" : weatherName},
					dataType:"text",
					success: function(data){
						console.log("ok");
					}
				
				});
				var weatherTxt ="";
				weatherTxt += "<tr>";
				weatherTxt += "<th scope='row'>"+weatherName+"</th>";
				weatherTxt += "<td>"+weatherTemp+"℃</td>";
				weatherTxt += "<td>"+weatherHumidity+"%</td>";
				weatherTxt += "<td>"+weatherWspd+"m/s</td>";
				weatherTxt += "<td>"+weatherMain+"</td>";
				weatherTxt += "<td><img src='http://openweathermap.org/img/w/" + weatherIcon + ".png' /></td>";
				weatherTxt += "</tr>";
				
				$(".weather.slopeTable tbody").append(weatherTxt);
			}
		});
		
		/* $.getJSON("http://api.openweathermap.org/data/2.5/weather?lat="+weatherLat+"&lon="+weatherLon+"&appid=0e5f521c3a02fef696fd7cb59646a610", function(data){
			weatherTemp = data["main"]["temp"];
			weatherHumidity = data["main"]["humidity"];
			weatherWspd = data["wind"]["speed"];
			weatherMain = data["weather"]["main"];
			weatherIcon = data["weather"]["icon"]; 
		}); */
		
		/* $.ajax({
			url : "http://api.openweathermap.org/data/2.5/weather?lat=37.207500&lon=128.825359&APPID=ba4d76378a980b7d67a15cf76735b65c",
			method: "GET",			
			success : function(data){
				var wspd = data;
				$(".wspd").html(wspd);
				JsonParser parser = new JsonParser();
				JSONObject jsonObject = (JSONObject) parser.parse(data);
				$(".wspd").html(jsonObject.get("speed"));
				
				$(".wspd").html(data.wind.speed);
			}
		});  */
	}
</script>

<div id="slopeWrap">
	<h2 class="title">슬로프안내<span class="subTitle">질주본능을 자극하는 프리미엄 슬로프</span></h2>
	<hr>
	<h4 class="contentTitle">국제스키연맹 공인 슬로프</h4>
	<p class="content">백운산 1,367m로부터 표고차 약 680m까지 천혜의 환경 안에서 슬로프 18면, 총 연장 21km의 프리미엄을 온 몸으로 즐기실 수 있는 환상적인 슬로프입니다.
	HIGH1 SLOPE MAP을 통해 약 28만평에 달하는 스키장의 프리미엄 슬로프를 미리 체험하세요.</p>
	<h4 class="contentTitle">슬로프 안내맵</h4>
	<hr class="ski" style="margin: 0 0 17px;">
	<p class="content">슬로프 운영 현황은 기상 상태 및 영업정책에 따라 변동될 수 있습니다. 밸리베이스, 밸리허브, 마운틴 탑 아이콘을 클릭하시면 기상정보가 안내됩니다.<br>
	지도 위 빨간색 번호 버튼 또는 웹캠 안내 버튼을 클릭하시면, 슬로프 실시간 현황인 웹캠을 보실 수 있습니다.<br>
	주간/야간 영업시 마운틴곤돌라 및 헤라리프트는 슬로프 정비작업으로 조기 탑승마감(15시30분 / 21시30분) 될 수 있습니다.</p>
	<div class="map">
		<div class="mapWrap">
			<img src="https://user-images.githubusercontent.com/35482955/35262210-067c3098-0057-11e8-86a9-9bee0d1e4bbc.jpg" />
		</div>
		<div class="mapButtonWrap">
			 <p class="menu first">
			 	<span class="title_eng">&nbsp;ZEUS<br></span>
			 	<span class="title_kor">&nbsp;제우스</span><br><br>
			 	<span class="zeus1 button">1</span>
			 	<span class="zeus2 button">2</span>
			 	<span class="zeus3 button">3</span>
			 	<span class="zeus3-1 button">3-1</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;VICTORIA<br></span>
			 	<span class="title_kor">&nbsp;빅토리아</span><br><br>
			 	<span class="victoria1 button">1</span>
			 	<span class="victoria2 button">2</span>
			 	<span class="victoria3 button">3</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;HERA<br></span>
			 	<span class="title_kor">&nbsp;헤라</span><br><br>
			 	<span class="hera1 button">1</span>
			 	<span class="hera2 button">2</span>
			 	<span class="hera3 button">3</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;APOLLO<br></span>
			 	<span class="title_kor">&nbsp;아폴로</span><br><br>
			 	<span class="apollo1 button">1</span>
			 	<span class="apollo2 button">2</span>
			 	<span class="apollo3 button">3</span>
			 	<span class="apollo4 button">4</span>
			 	<span class="apollo5 button">5</span>
			 	<span class="apollo6 button">6</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;ATHENA<br></span>
			 	<span class="title_kor">&nbsp;아테나</span><br><br>
			 	<span class="athena1 button">1</span>
			 	<span class="athena2 button">2</span>
			 	<span class="athena3 button">3</span>
			 	<span class="athena3-1 button">3-1</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;SLED<br></span>
			 	<span class="title_kor">&nbsp;눈썰매장</span><br><br>
			 	<span class="sled1 button">1</span>
			 </p>
			 <p class="menu">
			 	<span class="title_eng">&nbsp;TERRAIN PARK</span><br><br>
			 	<span class="terrainPark1 button">초</span>
			 	<span class="terrainPark2 button">중</span>
			 	<span class="terrainPark3 button">상</span><br>
			 	<span class="terrainPark4 button" style="width:58px;">하프파이프</span>
			 	<span class="terrainPark5 button" style="width:27px;">모굴</span>
			 </p>
		</div>
	</div>
	<h4 class="contentTitle">슬로프 제원/현황</h4>
	<hr class="ski" style="margin: 0 0 17px;">
	<p class="content">운영시간: 오전 08:30~13:00 / 오후 12:00~16:00 / 야간 18:00~22:00<br>
	주간/야간 영업시 마운틴곤돌라 및 헤라리프트는 슬로프 정비작업으로 조기 탑승마감(15시30분 / 21시30분) 될 수 있습니다.</p>
	<table class="slopeTable">
		<caption>슬로프제원/현황</caption>
		<thead>
	    	<tr>
	    	   <th scope="col" colspan="2" rowspan="2">슬로프명</th>
			   <th scope="col" rowspan="2">난이도</th>
			   <th scope="col" rowspan="2">연장(m)</th>
			   <th scope="col" rowspan="2">표고차(m)</th>
			   <th scope="col" rowspan="2">평균폭(m)</th>
			   <th scope="col" colspan="2">경사각</th>
			   <th scope="col" colspan="4">오픈현황</th>
	    	</tr>
			<tr>
				<th scope="col" class="tableTitle">평균</th>
				<th scope="col" class="tableTitle">최대</th>
				<th scope="col" class="tableTitle">오전</th>
				<th scope="col" class="tableTitle">오후</th>
				<th scope="col" class="tableTitle">야간</th>
			</tr>
	    </thead>
		<tbody>
			<tr>
				<th scope="row" rowspan="4">제우스 <br>(ZEUS)</th>
				<th scope="row" class="tableTitle">Z1</th>
				<td>초급</td>
				<td>2,328</td>
				<td>370.00</td>
				<td>41.3</td>
				<td>9.48</td>
				<td>13.6</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">Z2</th>
				<td>초급</td>
				<td>2,198</td>
				<td>95.61</td>
				<td>19.9</td>
				<td>7.49</td>
				<td>13.5</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">Z3</th>
				<td>초급</td>
				<td>1,835</td>
				<td>273.00</td>
				<td>71.2</td>
				<td>8.73</td>
				<td>13.8</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">Z3-1</th>
				<td>초급</td>
				<td>1,023</td>
				<td>121.00</td>
				<td>71.2</td>
				<td>6.8</td>
				<td>10.8</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" rowspan="3">빅토리아 <br>(VICTORIA)</th>
				<th scope="row" class="tableTitle">V1</th>
				<td>상급</td>
				<td>1,439</td>
				<td>379.00</td>
				<td>49.1</td>
				<td>15.58</td>
				<td>27.7</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">V2</th>
				<td>상급</td>
				<td>1,382</td>
				<td>269.00</td>
				<td>36.1</td>
				<td>18.72</td>
				<td>25.8</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">V3</th>
				<td>최상급</td>
				<td>1,311</td>
				<td>376.00</td>
				<td>34.1</td>
				<td>17.01</td>
				<td>35.4</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" rowspan="3">헤라<br>(HERA)</th>
				<th scope="row" class="tableTitle">H1</th>
				<td>중급</td>
				<td>1,508</td>
				<td>197.03</td>
				<td>39.4</td>
				<td>14.86</td>
				<td>21.8</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">H2</th>
				<td>중상급</td>
				<td>1,301</td>
				<td>294.73</td>
				<td>38.8</td>
				<td>17.40</td>
				<td>24.2</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">H3</th>
				<td>상급</td>
				<td>1,278</td>
				<td>262.12</td>
				<td>36.6</td>
				<td>19.75</td>
				<td>25.8</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" rowspan="6">아폴로 <br>(APOLLO)</th>
				<th scope="row" class="tableTitle">AP1</th>
				<td>상급</td>
				<td>1,506</td>
				<td>349.48</td>
				<td>35.0</td>
				<td>11.35</td>
				<td>25.4</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AP2</th>
				<td>상급</td>
				<td>863</td>
				<td>161.00</td>
				<td>33.1</td>
				<td>20.32</td>
				<td>24.2</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AP3</th>
				<td>상급</td>
				<td>754</td>
				<td>121.39</td>
				<td>33.7</td>
				<td>15.85</td>
				<td>26.3</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AP4</th>
				<td>상급</td>
				<td>1,569</td>
				<td>409.63</td>
				<td>54.7</td>
				<td>15.45</td>
				<td>24.2</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AP5</th>
				<td>최상급</td>
				<td>1,239</td>
				<td>266.33</td>
				<td>40.8</td>
				<td>22.13</td>
				<td>33.0</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AP6</th>
				<td>상급</td>
				<td>1,543</td>
				<td>193.37</td>
				<td>44.3</td>
				<td>18.03</td>
				<td>24.3</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" rowspan="4">아테나<br>(ATHENA)</th>
				<th scope="row" class="tableTitle">AT1</th>
				<td>초급</td>
				<td>1,183</td>
				<td>102.00</td>
				<td>52.3</td>
				<td>6.35</td>
				<td>11.19</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AT2</th>
				<td>중급</td>
				<td>1,666</td>
				<td>312.00</td>
				<td>42.0</td>
				<td>10.7</td>
				<td>15.2</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AT3</th>
				<td>초급</td>
				<td>1,862</td>
				<td>228.30</td>
				<td>19.2</td>
				<td>7.28</td>
				<td>11.3</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">AT3-1</th>
				<td>초급</td>
				<td>1,162</td>
				<td>138.30</td>
				<td>19.2</td>
				<td>6.8</td>
				<td>10.4</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" rowspan="5">터레인 <br>(TERRAIN)</th>
				<th scope="row" class="tableTitle">초</th>
				<td>초급</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">중</th>
				<td>중급</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">상</th>
				<td>상급</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">하프파이프</th>
                <td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr>
				<th scope="row" class="tableTitle">모글</th>
				<td>상급</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
				<td><span class="close">close</span></td>
			</tr>
			<tr class="bt">
				<th scope="row" colspan="2">눈썰매장</th>
				<td>초급</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td>-</td>
				<td><span class="open">open</span></td>
				<td><span class="open">open</span></td>
				<td><span class="close">close</span></td>
			</tr>
		</tbody>
	</table>
	<h4 class="contentTitle">국제스키연맹 공인 슬로프</h4>
	<hr class="ski" style="margin: 0 0 17px;">
	<p class="content">풍속은 08시 마운틴 곤돌라 기준</p>
	<input type="button" id="reWeather" value="갱신">
	<table class="slopeTable weather">
	    <caption>슬로프 기상 현황</caption>
	    <thead>
	    	<tr>
	    	   <th scope="col">구분</th>
			   <th scope="col">온도</th>
			   <th scope="col">습도</th>
			   <th scope="col">풍속</th>
			   <th scope="col">상태</th>
			   <th scope="col">아이콘</th>
	    	</tr>
	    </thead>
		<tbody>
			<tr>
				<th scope="row">밸리 허브</th>
				<td>-3.1℃</td>
				<td>75%</td>
				<td class="wspd"></td>
				<td>mm</td>
				<td>mm</td>
			</tr>
			<tr>
				<th scope="row">마운틴 탑</th>
				<td>-3.7℃</td>
				<td>83%</td>
				<td>4~6m/s</td>
				<td>mm</td>
				<td>mm</td>
			</tr>
			<tr>
				<th scope="row">마운틴 허브</th>
				<td>-6.2℃</td>
				<td>82%</td>
				<td>5~7m/s</td>
				<td>mm</td>
				<td>mm</td>
			</tr>
		</tbody>
	</table>
</div>