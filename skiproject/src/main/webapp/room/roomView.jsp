<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link href="css/style.css" rel="stylesheet">
<style type="text/css">  
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
* {font-family: 'Nanum Gothic', serif;}
#kCalendar {width: 250px; height: 250px; border: 1px solid black;}
#kCalendar #header {height: 50px; line-height: 50px; text-align: center; font-size: 18px; font-weight: bold}
#kCalendar .button {color: #000; text-decoration: none;}
#kCalendar table {width: 250px; height: 200px;}
#kCalendar caption {display: none;}
#kCalendar .sun {text-align: center; color: deeppink;}
#kCalendar .mon {text-align: center;}
#kCalendar .tue {text-align: center;}
#kCalendar .wed {text-align: center;}
#kCalendar .thu {text-align: center;}
#kCalendar .fri {text-align: center;}
#kCalendar .sat {text-align: center; color: deepskyblue;}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.js"></script>
	<script  type="text/javascript">
	$(document).ready(function(){
			kCalendar('kCalendar');
			//달력생성
			
			$(".day").click(function(){
				console.log($(this).html());
			});
			
		});
	</script>
<script >
function kCalendar(id, date) {
	var kCalendar = document.getElementById(id);
	var wooDate = new Date();
	var year  = wooDate.getFullYear();
	var month = wooDate.getMonth() + 1;
	var selectDay ; 
	if( month < 10 ){
		month = '0' + month;
	}
	var toDay = year+""+month;
	
	if( typeof( date ) !== 'undefined' ) {
		
		date = date.split('-');
		
		if( date[1] < 10 ){
			var selectMonth = '0' + date[1];
			selectDay = date[0]+selectMonth;
		}else {
			selectDay = date[0]+date[1];
		}
		
		if(toDay>selectDay){
			return;
		}else if(selectDay-toDay==101){
			return;
		}
		
		date[1] = date[1] - 1;
		date = new Date(date[0], date[1], date[2]);
	} else {
		var date = new Date();
	}
	var currentYear = date.getFullYear();
	//년도를 구함믿ㄳ
	var currentMonth = date.getMonth() + 1;
	//연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
	var currentDate = date.getDate();
	//오늘 일자.
	
	date.setDate(1);
	var currentDay = date.getDay();
	//이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
	
	var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
	var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	if( (currentYear % 4 === 0 && currentYear % 100 !== 0) || currentYear % 400 === 0 )
		lastDate[1] = 29;
	//각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일 임.
	
	var currentLastDate = lastDate[currentMonth-1];
	var week = Math.ceil( ( currentDay + currentLastDate ) / 7 );
	//총 몇 주인지 구함.
	
	if(currentMonth != 1)
		var prevDate = currentYear + '-' + ( currentMonth - 1 ) + '-' + currentDate;
	else
		var prevDate = ( currentYear - 1 ) + '-' + 12 + '-' + currentDate;
	//만약 이번달이 1월이라면 1년 전 12월로 출력.
	
	if(currentMonth != 12) 
		var nextDate = currentYear + '-' + ( currentMonth + 1 ) + '-' + currentDate;
	else
		var nextDate = ( currentYear + 1 ) + '-' + 1 + '-' + currentDate;
	//만약 이번달이 12월이라면 1년 후 1월로 출력.

	
	if( currentMonth < 10 )
		var currentMonth = '0' + currentMonth;
	//10월 이하라면 앞에 0을 붙여준다.
	
	var calendar = '';
	
	calendar += '<div id="header">';
	calendar += '			<span><a href="#" class="button left" onclick="kCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>';
	calendar += '			<span id="date">' + currentYear + '년 ' + currentMonth + '월</span>';
	calendar += '			<span><a href="#" class="button right" onclick="kCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>';
	calendar += '		</div>';
	calendar += '		<table border="0" cellspacing="0" cellpadding="0">';
	calendar += '			<caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>';
	calendar += '			<thead>';
	calendar += '				<tr>';
	calendar += '				  <th class="sun" scope="row">일</th>';
	calendar += '				  <th class="mon" scope="row">월</th>';
	calendar += '				  <th class="tue" scope="row">화</th>';
	calendar += '				  <th class="wed" scope="row">수</th>';
	calendar += '				  <th class="thu" scope="row">목</th>';
	calendar += '				  <th class="fri" scope="row">금</th>';
	calendar += '				  <th class="sat" scope="row">토</th>';
	calendar += '				</tr>';
	calendar += '			</thead>';
	calendar += '			<tbody>';
	
	var dateNum = 1 - currentDay;
	
	for(var i = 0; i < week; i++) {
		calendar += '			<tr>';
		for(var j = 0; j < 7; j++, dateNum++) {
			if( dateNum < 1 || dateNum > currentLastDate ) {
				calendar += '				<td class="day ' + dateString[j] + '"> </td>';
				continue;
				
			}
			calendar += '				<td class="day ' + dateString[j] + '">' + dateNum + '</td>';
		}
		calendar += '			</tr>';
	}
	calendar += '			</tbody>';
	calendar += '		</table>';
	
	kCalendar.innerHTML = calendar;
}

</script>
<body>
	<div class="roomBady">
		<div class="roomTop">
			<div id="kCalendar"></div>
		</div>
	</div>
</body>
</html>