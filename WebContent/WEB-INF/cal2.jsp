<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%--     pageEncoding="UTF-8"%> --%>
<%
	response.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력 예제</title>
<script>
	function viewCalendar(year,month){
		var total_days;
		var botton=window.parent.frames[1];
		if(month==1) total_days=31;
		else if(month==2){
			if(((year%4==0)&&(year%100 !=0)) ||(year%400 == 0))
				total_days=29;
			else
				total_days=28;
		}
		else if(month==3) total_days=31;
		else if(month==4) total_days=30;
		else if(month==5) total_days=31;
		else if(month==6) total_days=30;
		else if(month==7) total_days=31;
		else if(month==8) total_days=31;
		else if(month==9) total_days=30;
		else if(month==10) total_days=31;
		else if(month==11) total_days=30;
		else if(month==12) total_days=31;
		var first_date = new Date(year,month-1,1);
		var first_day=first_date.getDay();
		botton.document.write("<body bgcolor=white>");
		botton.document.write("<center><table border=0>");
		botton.document.write("<tr>");
		botton.document.write("<th colspan=7>");
		botton.document.write(year+"년"+"month"+"월");
		botton.document.write("<tr><td height=20> </td></tr>");
		botton.document.write("<tr><th align=right><font color=red>일</font></th>");
		botton.document.write("<th align=right>월</th>");
		botton.document.write("<th align=right>화</th>");
		botton.document.write("<th align=right>수</th>");
		botton.document.write("<th align=right>목</th>");
		botton.document.write("<th align=right>금</th>");
		botton.document.write("<th align=right><font color=blue>토</font></th>");
		col = 0;
		botton.document.write("<tr><td height=5> </td></tr>");
		for(i=0;i<first_day;i++){
			botton.document.write("<td> </td>");
			col++;
		}
		for(i=1;i<=total_days;i++){
			if(col==0){
				botton.document.write("<td bg width=30 align=right>");
				botton.document.write("<font color=red>"+i+"</font>");
				botton.document.write("</td>");
			}else if(col==6){
				botton.document.write("<td bg width=30 align=right>");
				botton.document.write("<font color=blue>"+i+"</font>");
				botton.document.write("</td>");
			}else{
				botton.document.write("<td bg width=30 align=right>");
				botton.document.write(i);
				botton.document.write("</td>");
			}
			col++;
			if(col==7){
				botton.document.write("</tr>");
				col=0;
			}
		}
		botton.document.write("</table></center>");
		botton.document.write("</body>");
		botton.document.close();
	}
	function check(){
		var year=parseInt(document.myform.y.value);
		var month=parseInt(document.myform.m.value);
		if(year>0){
			if(month>=1&&month<=12) {viewCalender(year,month);}
			else if(month<0||month>12){alert("달을 다시 입력 하세요");}
			else {alert("달을 입력하지 않았습니다.");}
		}
		else {alert("년도를 다시 입력 하세요");}
				
		}
	function current(){
		var current=new Date();
		var year=current.getYear();
		var month=current.getMonth()+1;
		viewCalendar(year,month);
	}

</script>
</head>

<body>
<h2>년, 월을 입력하세요.</h2>
<form name="myform">
<input type="text" name="y" size=4>
<input type="text" name="m" size=2>
<input type=button value="Show" onClick="check()">

</form>
</body>
</html>