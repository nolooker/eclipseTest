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
<h1>?????? ?????? ??????</h1>

<form action="makeForm02To.jsp">
	
	<label id="id">????????? : </label>
	<input type="text"name="id"></input>
	
	<br>
	
	<label id="name">?????? : </label>
	<input type="text"name="name"></input>
	
	<br>
	
	<label id="password">?????? ?????? : </label>
	<input type="text"name="password"></input>
	
	<br>
	
	<label id="gender">?????? : </label>
	<input type="radio"name="gender"value="??????">??????</input>
	<input type="radio"name="gender"value="??????">??????</input>
	<br>
	
	<label id="birth">?????? : </label>
	<input type="text"name="birth"></input>
	
	<br>
	
	<label id="marriage">?????? ?????? : </label>
	
	<input type="radio"name="marriage"value="??????">??????
	<input type="radio"name="marriage"value="??????">??????
	<input type="radio"name="marriage"value="??????">??????
	
	
	<br>
	
	<label id="salary">?????? : </label>
	<input type="text"name="salary"></input>
	
	<br>
	
	<label id="address">?????? : </label>
	<input type="text"name="address"></input>
	
	<br>
	
	<label id="manager">????????? : </label>
	<input type="text"name="manager"></input>
	
	<br>
	
	<label id="image">????????? : </label>
	<input type="file"name="image"></input>
	
	<br>
	
	<label id="hobby">?????? : </label>
	<input type="checkbox"name="sport"value="??????">??????
	<input type="checkbox"name="sport"value="??????">??????
	<input type="checkbox"name="sport"value="??????">??????
	<br>
	
	<label id="country">?????? ?????? ?????? : </label>
	<select name="country">
	<option>--????????? ???????????????.
	<option value="??????">??????
	<option value="?????????">?????????
	<option value="??????">??????
	<option value="?????????">?????????
	<option value="????????????">????????????
	<option value="??????">??????
	<option value="?????????">?????????
	<option value="?????????">?????????
	<option value="????????????">????????????
	<option value="???????????????">???????????????
	<option value="????????????">????????????
	<option value="??????">??????
	</select>
	
	
	<br>
	
	<label>????????? : </label>
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
	
	
	<input type="reset"value="?????????"></input>
	
	<input type="submit"value="????????????"></input>
	
	
	
	<br>
</form>
</body>
</html>