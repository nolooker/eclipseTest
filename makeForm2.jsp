<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testfile</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js" ></script>

<script type="text/javascript">

var label_string = ' ' ;


$('label').each(function(){
	label_string += $(this).text() + ' ' ;
});

$('#label_text').html(label_string) ;

$('#check01').click(function(){
	
	var checklist = $(':checkbox');
	
	var result = ' ' ;
	
	for(var i = 0 ; i < checklist.length ; i++){
		
		alert(checklist[i].checked) ;
		
		if(checklist[i].checked){
			
			result += checklist[i].value + ' ' ;
		}
	}
	
	
});

</script>



<style type="text/css">

#id{color:white;background-color:black;}
#name{color:white;background-color:black;}
#country{color:white;background-color:black;}
#password{color:white;background-color:black;}
#gender{color:white;background-color:black;}
#birth{color:white;background-color:black;}
#marriage{color:white;background-color:black;}
#salary{color:white;background-color:black;}
#address{color:white;background-color:black;}
#manager{color:white;background-color:black;}
#image{color:white;background-color:black;}
#hobby{color:white;background-color:black;}

.input{
		color:#000;
		caret-color:black;}


h1 span:nth-child(1){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #4285F4;
}
h1 span:nth-child(2){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #EA4335;
}
h1 span:nth-child(3){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}
h1 span:nth-child(4){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #4285F4;
}
h1 span:nth-child(5){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}
h1 span:nth-child(6){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #EA4335;
}

/* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  */

h2 span:nth-child(1){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}
h2 span:nth-child(2){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}
h2 span:nth-child(3){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}
h2 span:nth-child(4){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}
h2 span:nth-child(5){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #34A853;
}

/* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@  */

h3 span:nth-child(1){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}
h3 span:nth-child(2){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}
h3 span:nth-child(3){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}
h3 span:nth-child(4){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}
h3 span:nth-child(5){
font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
color: #FCC629;
}



</style>


</head>
<body>
<h1>회원 가입 양식</h1>

<form action="makeForm02To.jsp">
	
	<label id="id">아이디 : </label>
	<input type="text"name="id"></input>
	
	<br>
	
	<label id="name">이름 : </label>
	<input type="text"name="name"></input>
	
	<br>
	
	<label id="password">비밀 번호 : </label>
	<input type="text"name="password"></input>
	
	<br>
	
	<label id="gender">성별 : </label>
	<input type="radio"name="gender"value="남자">남자</input>
	<input type="radio"name="gender"value="여자">여자</input>
	<br>
	
	<label id="birth">생일 : </label>
	<input type="text"name="birth"></input>
	
	<br>
	
	<label id="marriage">결혼 여부 : </label>
	
	<input type="radio"name="marriage"value="결혼">결혼
	<input type="radio"name="marriage"value="미혼">미혼
	<input type="radio"name="marriage"value="이혼">이혼
	
	
	<br>
	
	<label id="salary">급여 : </label>
	<input type="text"name="salary"></input>
	
	<br>
	
	<label id="address">주소 : </label>
	<input type="text"name="address"></input>
	
	<br>
	
	<label id="manager">매니저 : </label>
	<input type="text"name="manager"></input>
	
	<br>
	
	<label id="image">이미지 : </label>
	<input type="file"name="image"></input>
	
	<br>
	
	<label id="hobby">취미 : </label>
	<input type="checkbox"name="sport"value="탁구">탁구
	<input type="checkbox"name="sport"value="야구">야구
	<input type="checkbox"name="sport"value="축구">축구
	<br>
	
	<label id="country">가고 싶은 국가 : </label>
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
	
	<h1>
	<a href="https://www.google.com">
	<span>G</span><span>o</span><span>o</span><span>g</span><span>l</span><span>e</span>
	</h1>
	<br/>
	
	<a href="https://www.naver.com">
	<h2><span>N</span><span>a</span><span>v</span><span>e</span><span>r</span></h2>
	
	<br/>
	<a href="https://www.kakao.com">
	<h3><span>K</span><span>a</span><span>k</span><span>a</span><span>o</span></h3>
	
	<br>
	
	
	<input type="reset"value="초기화"></input>
	
	<input type="submit"value="가입하기"></input>
	
	
	
	<br>
</form>
</body>
</html>