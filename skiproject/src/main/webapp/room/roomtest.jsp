<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">  
/* Kurien / Kurien's Blog / http://blog.kurien.co.kr */
/* 주석만 제거하지 않는다면, 어떤 용도로 사용하셔도 좋습니다. */

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

<body>
<div id="kCalendar">
<div id="header">;
			<span><a href="#" class="button left" onclick="kCalendar(\'' +  id + '\', \'' + prevDate + '\')"><</a></span>
			<span id="date">' + currentYear + '년 ' + currentMonth + '월</span>
			 			<span><a href="#" class="button right" onclick="kCalendar(\'' + id + '\', \'' + nextDate + '\')">></a></span>
			 		</div>
			 		<table border="0" cellspacing="0" cellpadding="0">
			 			<caption>' + currentYear + '년 ' + currentMonth + '월 달력</caption>
			 			<thead>
			 				<tr>
			 				  <th class="sun" scope="row">일</th>
			 				  <th class="mon" scope="row">월</th>
			 				  <th class="tue" scope="row">화</th>
			 				  <th class="wed" scope="row">수</th>
			 				  <th class="thu" scope="row">목</th>
			 				  <th class="fri" scope="row">금</th>
			 				  <th class="sat" scope="row">토</th>
			 				</tr>
			 			</thead>
			 			<tbody>
			 			</tbody>
			 			</table>
</div>

</body>
</html>