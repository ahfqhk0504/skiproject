<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<body id="page-top"> 
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger slope" href="#page-top">WESKI</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link slope" href="/skiproject/slope/page">SKI/BOARD</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger slope" href="#services">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger slope" href="#portfolio">Portfolio</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger slope" href="#contact">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
	<header class="slopehead text-center text-white d-flex">
      <div class="container my-auto">
        <div class="row">
        	<div class="slopeTitleWrap">
          	
	            <h2 class="title">슬로프안내<span class="subTitle">질주본능을 자극하는 프리미엄 슬로프</span></h2>
				<h4 class="contentTitle">국제스키연맹 공인 슬로프</h4>
				<p class="content">
				백운산 1,367m로부터 표고차 약 680m까지 천혜의 환경 안에서 슬로프 18면,<br> 
				총 연장 21km의 프리미엄을 온 몸으로 즐기실 수 있는 환상적인 슬로프입니다.<br>
				HIGH1 SLOPE MAP을 통해 약 28만평에 달하는 스키장의 프리미엄 슬로프를 미리 체험하세요.</p>
          </div>
        </div>
      </div>
    </header>
    <section id="mapSection">
		<div class="slopeWrap">
			<h4 class="contentTitle">슬로프 안내맵</h4>
			<p class="content">슬로프 운영 현황은 기상 상태 및 영업정책에 따라 변동될 수 있습니다. 밸리베이스, 밸리허브, 마운틴 탑 아이콘을 클릭하시면 기상정보가 안내됩니다.<br>
			지도 위 빨간색 번호 버튼 또는 웹캠 안내 버튼을 클릭하시면, 슬로프 실시간 현황인 웹캠을 보실 수 있습니다.<br>
			주간/야간 영업시 마운틴곤돌라 및 헤라리프트는 슬로프 정비작업으로 조기 탑승마감(15시30분 / 21시30분) 될 수 있습니다.</p>
			<div class="map">
				<div class="slopeSubInfo">
					<span class="slopeTitle"></span><br>
					<span class="slopeName"></span><br>
					<table class="slopeSubInfoTable">
						<thead>
							<tr>
								<th>난이도</th>
								<th>표고차 (m)</th>
								<th>슬로프길이 (m)</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="slopeDifficulty"></td>
								<td class="slopeAltitude"></td>
								<td class="slopeLength"></td>
							</tr>
						</tbody>
					</table>
					
					<table class="slopeSubInfoTable">
						<thead>
							<tr>
								<th>평균폭 (m)</th>
								<th>평균경사 (')</th>
								<th>최대경사 (')</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="slopeWidth"></td>
								<td class="slopeSlopeAverage"></td>
								<td class="slopeSlopeMax"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="mapWrap">
					<img src="https://user-images.githubusercontent.com/35482955/35262210-067c3098-0057-11e8-86a9-9bee0d1e4bbc.jpg" />
				</div>
				<div class="mapButtonWrap">
					 <p class="menu first">
					 	<span class="title_eng">&nbsp;ZEUS<br></span>
					 	<span class="title_kor">제우스</span><br><br>
					 	<span class="Zeus1 button">1</span>
					 	<span class="Zeus2 button">2</span>
					 	<span class="Zeus3 button">3</span>
					 	<span class="Zeus3-1 button">3-1</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;VICTORIA<br></span>
					 	<span class="title_kor">빅토리아</span><br><br>
					 	<span class="Victoria1 button">1</span>
					 	<span class="Victoria2 button">2</span>
					 	<span class="Victoria3 button">3</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;HERA<br></span>
					 	<span class="title_kor">헤라</span><br><br>
					 	<span class="Hera1 button">1</span>
					 	<span class="Hera2 button">2</span>
					 	<span class="Hera3 button">3</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;APOLLO<br></span>
					 	<span class="title_kor">아폴로</span><br><br>
					 	<span class="Apollo1 button">1</span>
					 	<span class="Apollo2 button">2</span>
					 	<span class="Apollo3 button">3</span>
					 	<span class="Apollo4 button">4</span>
					 	<span class="Apollo5 button">5</span>
					 	<span class="Apollo6 button">6</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;ATHENA<br></span>
					 	<span class="title_kor">아테나</span><br><br>
					 	<span class="Athena1 button">1</span>
					 	<span class="Athena2 button">2</span>
					 	<span class="Athena3 button">3</span>
					 	<span class="Athena3-1 button">3-1</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;SLED<br></span>
					 	<span class="title_kor">눈썰매장</span><br><br>
					 	<span class="Sled1 button">1</span>
					 </p>
					 <p class="menu">
					 	<span class="title_eng">&nbsp;TERRAIN PARK</span><br><br>
					 	<span class="TerrainPark1 button">초</span>
					 	<span class="TerrainPark2 button">중</span>
					 	<span class="TerrainPark3 button">상</span><br>
					 	<span class="TerrainPark4 button" style="width:58px;">하프파이프</span>
					 	<span class="TerrainPark5 button" style="width:27px;">모굴</span>
					 </p>
				</div>
			</div>
		</div>
	</section>
	<section id="slopeSection">
		<div class="slopeWrap">
			<h4 class="contentTitle">슬로프 제원/현황</h4>
			<p class="content">운영시간: 오전 08:30~13:00 / 오후 12:00~16:00 / 야간 18:00~22:00<br>
			주간/야간 영업시 마운틴곤돌라 및 헤라리프트는 슬로프 정비작업으로 조기 탑승마감(15시30분 / 21시30분) 될 수 있습니다.</p>
			<table class="slopeTable slope">
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
				</tbody>
			</table>
		</div>
	</section>
	<section id="weatherSection">	
		<div class="slopeWrap">
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
				</tbody>
			</table>
		</div>
	
	</section>
</body>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$(".mapButtonWrap .menu .button").mouseenter(function(){
			var slopeTitleKor = $(this).prevAll(".title_kor").text();
			var slopeName = $(this).attr("class").split(" ");
			$.ajax({
				url: "/skiproject/slope/getSlopeInfo",
				type: "POST",
				data: {'slopeName': slopeName[0]},
				dataType: "json",
				success: function(data){
					console.log(data.slopeDTO.slopeML);
					$("#slopeWrap .map img").attr("src",data.slopeDTO.slopeMap);
					
					$(".map .slopeSubInfo").css("display","block").css("margin-left",data.slopeDTO.slopeML+"px").css("margin-top",data.slopeDTO.slopeMT+"px");
					$(".slopeSubInfo .slopeTitle").text(slopeTitleKor);
					$(".slopeSubInfo .slopeName").text(data.slopeDTO.slopeName);
					$(".slopeSubInfo .slopeSubInfoTable td.slopeDifficulty").text(data.slopeDTO.slopeDifficulty);
					$(".slopeSubInfo .slopeSubInfoTable td.slopeLength").text(comma(data.slopeDTO.slopeLength));
					$(".slopeSubInfo .slopeSubInfoTable td.slopeAltitude").text(data.slopeDTO.slopeAltitude);
					$(".slopeSubInfo .slopeSubInfoTable td.slopeWidth").text(data.slopeDTO.slopeWidth);
					$(".slopeSubInfo .slopeSubInfoTable td.slopeSlopeAverage").text(data.slopeDTO.slopeSlopeAverage);
					$(".slopeSubInfo .slopeSubInfoTable td.slopeSlopeMax").text(data.slopeDTO.slopeSlopeMax);
					 
				}
			}); 
		});
		
		$(".mapButtonWrap .menu .button").mouseleave(function(){
			$("#slopeWrap .map img").attr("src","https://user-images.githubusercontent.com/35482955/35262210-067c3098-0057-11e8-86a9-9bee0d1e4bbc.jpg");
			$("#slopeWrap .map .slopeSubInfo").css("display","none");
			//$(".map .slopeSubInfo").css("margin-left","9999px").css("margin-top","9999px");
		});
		
		//날씨 갱신 버튼 클릭시
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
		var slopeTxt ="";
		$.ajax({
			url:"/skiproject/slope/slopeTable",
			Type: "GET",
			dataType: "json",
			success: function(data){
				$.each(data.slopeList, function(index,slopeDTO){
					if(slopeDTO.slopeName=="Zeus1"){
						slopeTxt += "<tr>";
						slopeTxt += '<th scope="row" rowspan="4">제우스 <br>(ZEUS)</th>';
					}else if(slopeDTO.slopeName=="Victoria1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" rowspan="3">빅토리아 <br>(VICTORIA)</th>';
					}else if(slopeDTO.slopeName=="Hera1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" rowspan="3">헤라<br>(HERA)</th>';
					}else if(slopeDTO.slopeName=="Apollo1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" rowspan="6">아폴로 <br>(APOLLO)</th>';
					}else if(slopeDTO.slopeName=="Athena1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" rowspan="4">아테나<br>(ATHENA)</th>';
					}else if(slopeDTO.slopeName=="TerrainPark1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" rowspan="5">터레인 <br>(TERRAIN)</th>';
					}else if(slopeDTO.slopeName=="Sled1"){
						slopeTxt += '<tr class="bt">';
						slopeTxt += '<th scope="row" colspan="2">눈썰매장</th>';
					}else{
						slopeTxt += "<tr>";
					}
					if(slopeDTO.slopeNickName != "눈썰매장"){
						slopeTxt += '<th scope="row" class="tableTitle">'+slopeDTO.slopeNickName+'</th>';
					}
					
					slopeTxt += '<td>'+slopeDTO.slopeDifficulty+'</td>';
					slopeTxt += '<td>'+comma(slopeDTO.slopeLength)+'</td>';
					slopeTxt += '<td>'+slopeDTO.slopeAltitude+'</td>';
					slopeTxt += '<td>'+slopeDTO.slopeWidth+'</td>';
					slopeTxt += '<td>'+slopeDTO.slopeSlopeAverage+'</td>';
					slopeTxt += '<td>'+slopeDTO.slopeSlopeMax+'</td>';
					if(slopeDTO.slopeMorningOpen == "open"){
						slopeTxt += '<td><span class="open">open</span></td>';
					}else{
						slopeTxt += '<td><span class="close">close</span></td>';
					}
					if(slopeDTO.slopeAfternoonOpen == "open"){
						slopeTxt += '<td><span class="open">open</span></td>';
					}else{
						slopeTxt += '<td><span class="close">close</span></td>';
					}
					if(slopeDTO.slopeNightOpen == "open"){
						slopeTxt += '<td><span class="open">open</span></td>';
					}else{
						slopeTxt += '<td><span class="close">close</span></td>';
					}
					slopeTxt += '</tr>';
					
				});
				
				$(".slopeTable.slope tbody").html(slopeTxt);
			}
	/*<tr>
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
	</tr> */
		});
	});
	function comma(str){
		str = str.toString();
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
	}
	function reWeather(weatherName,weatherLat, weatherLon){
		//console.log("weatherLat = "+weatherLat+", weatherLon"+weatherLon);
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
				//console.log(data);
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
						//console.log("ok");
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
