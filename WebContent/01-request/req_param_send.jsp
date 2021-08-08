<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객체에 파라미터 전달 예제</title>
</head>
<body>
<!--  form 태그의 action은 데이터가 전달될 목적지입니다.
현재, req_param_getpost로 날릴예정입니다. -->
	<form action="req_param_getpost.jsp" method="post">
		<input type="text" name="id">아이디<br>
		<input type="text" name="nick">닉네임<br>
		<input type="password" name="pw">비밀번호<br>
		
		<!--  체크박스 -->
		취미:
		<input type="checkbox" name="hobby" value="요리">요리&nbsp;
		<input type="checkbox" name="hobby" value="운동">은동&nbsp;
		<br/>
		<!--  특기 체크박스 추가, 최소 5개 이상 -->
		특기:
		<input type="checkbox" name="skill" value="철벽">철벽&nbsp;
		<input type="checkbox" name="skill" value="크리티컬">크리티컬&nbsp;
		<input type="checkbox" name="skill" value="도주">도주&nbsp;
		<input type="checkbox" name="skill" value="강행">강행&nbsp;
		<input type="checkbox" name="skill" value="답파">답파&nbsp;
		<br/>
		<!--  성별은 하나만 골라야 하므로 radio를 사용합니다. -->
		<input type="radio" name="gender" value="male">male&nbsp;
		<input type="radio" name="gender" value="female">female&nbsp;
		<br/>
		<input type="radio" name="newspaper" value="news">news&nbsp;
		<input type="radio" name="newspaper" value="동아">동이&nbsp;
		<input type="radio" name="newspaper" value="매일">매일&nbsp;
		<br/>
		<!--  select태그는 선택지를 드롭박스로 줍니다 -->
		<select name ="region">
			<option>서울</option>
			<option>경기</option>
			<option>충청</option>
			<option>전하</option>
			<option>경상</option>
			<option>강원</option>
			<option>제주</option>
		</select><br>		
		
		
		<br/>
		<input type="submit">
		<input type="reset">
	</form>
</body>
</html>