<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Google</title>
<style>

h1 span:nth-child(1){
position: absolute;
width: 45px;
height: 105px;
left: 478px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #4285F4;
}
h1 span:nth-child(2){
position: absolute;
width: 45px;
height: 105px;
left: 523px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #EA4335;
}
h1 span:nth-child(3){
position: absolute;
width: 45px;
height: 105px;
left: 568px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #FCC629;

}
h1 span:nth-child(4){
position: absolute;
width: 51px;
height: 105px;
left: 610px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #4285F4;

}
h1 span:nth-child(5){
position: absolute;
width: 25px;
height: 105px;
left: 658px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #34A853;
}
h1 span:nth-child(6){
position: absolute;
width: 40px;
height: 105px;
left: 683px;
top: 232px;

font-family: 'Roboto';
font-style: normal;
font-weight: 400;
font-size: 90px;
line-height: 105px;
text-align: center;

color: #EA4335;

}
.search-bar {
width:500px
}

input{
box-sizing: border-box;

position: absolute;
width: 616px;
height: 46px;
left: 292px;
top: 358px;

background: #FFFFFF;
border: 1px solid #DFE1E5;
border-radius: 24px;
}

button{



}


</style>

<script type="text/javascript">

function Google(){
	alert('구글 검색하기')
}

function Searching(){
		alert('검색가능')
}
function Sports(){
	alert('스포츠 검색')
}


</script>

</head>
<body>


<a href="http://www.google.com">구글</a>
<a href="http://www.naver.com">네이버</a>
<a href="http://www.daum.net">다음</a>


<h1><span>G</span><span>o</span><span>o</span><span>g</span><span>l</span><span>e</span></h1>
<input type="text">
<button>Google 검색</button>
<button>I'm Feeling Lucky</button>

<button onclick="Google();">Google Searching</button>
<button onclick="Searching();">Searching</button>
<button onclick="Sports();">Sports</button>


</body>
</html>