	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입 양식</h1>

<form action="makeForm01To.jsp">
	
	<label>아이디 : </label>
	<input type="text"name="id"></input>
	
	<br>
	
	<label>이름 : </label>
	<input type="text"name="name"></input>
	
	<br>
	
	<label>비밀 번호 : </label>
	<input type="text"name="password"></input>
	
	<br>
	
	<label>성별 : </label>
	<input type="radio"name="gender"value="남자">남자</input>
	<input type="radio"name="gender"value="여자">여자</input>
	<br>
	
	<label>생일 : </label>
	<input type="text"name="birth"></input>
	
	<br>
	
	<label>결혼 여부 : </label>
	
	<input type="radio"name="marriage"value="결혼">결혼
	<input type="radio"name="marriage"value="미혼">미혼
	<input type="radio"name="marriage"value="이혼">이혼
	
	
	<br>
	
	<label>급여 : </label>
	<input type="text"name="salary"></input>
	
	<br>
	
	<label>주소 : </label>
	<input type="text"name="address"></input>
	
	<br>
	
	<label>매니저 : </label>
	<input type="text"name="manager"></input>
	
	<br>
	
	<label>이미지 : </label>
	<input type="file"name="image"></input>
	
	<br>
	
	<label>취미 : </label>
	<input type="checkbox"name="sport"value="탁구">탁구
	<input type="checkbox"name="sport"value="야구">야구
	<input type="checkbox"name="sport"value="축구">축구
	<br>
	
	<label>가고 싶은 국가 : </label>
	<select name="country">
	<option>--국가를 선택하세요.
	<option value="영국">영국
	<option value="프랑스">프랑스
	<option value="독일">독일
	<option value="스위스">스위스
	<option value="이탈리아">이탈리아
	<option value="체코">체코
	<option value="스페인">스페인
	<option value="벨기에">벨기에
	<option value="네덜란드">네덜란드
	<option value="오스트리아">오스트리아
	<option value="대한민국">대한민국
	<option value="미국">미국
	</select>
	
	
	<br>
	
	<label>코멘트 : </label>
	<textarea name="comment"rows="10" cols="50"></textarea>
	
	
	<br>
	
	
	<input type="reset"value="초기화"></input>
	
	<input type="submit"value="가입하기"></input>
	
	
	
	<br>
</form>
</body>
</html>