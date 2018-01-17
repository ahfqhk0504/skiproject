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
	font-size: 12px;
}

#slopeWrap .slopeTable span{
	display: block;
	width: 50px;
	height: 20px;
	margin: auto;
}
#slopeWrap .slopeTable span.open{
	background: #52c2c2;
	border: 1px solid #52c2c2;
	color: #fff;
}
#slopeWrap .slopeTable span.close{
	color: #fff;
	background: #c0c0c0;
	border: 1px solid #c0c0c0;
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
	height: 550px;
	border: 1px solid #333;
	margin: 30px auto 0;
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
	</div>
	<h4 class="contentTitle">슬로프 제원/현황</h4>
	<hr class="ski" style="margin: 0 0 17px;">
	<p class="content">운영시간: 오전 08:30~13:00 / 오후 12:00~16:00 / 야간 18:00~22:00<br>
	주간/야간 영업시 마운틴곤돌라 및 헤라리프트는 슬로프 정비작업으로 조기 탑승마감(15시30분 / 21시30분) 될 수 있습니다.</p>
	
	<table class="slopeTable">
		    <caption>슬로프 제원/현황</caption>
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
					<!--<td>초급</td>-->
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



</div>