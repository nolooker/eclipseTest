<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="./../common/bootstrap5.jsp"%>
<%@ include file="./../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">

<style type="text/css">

.card{
margin-left:auto;
margin-right:auto;
}

.Leftside{
margin-left:0px;
}

.card_borderless{
border:0px;
}

.small_image {
	width: 100px;
	height: 100px;
	margin: 2px;
	border-radius: 5px;
}

#totalprice {
	color: red;
	font-size: 20px;
	font-weight: bolder;
}

.cart{
background-color:black;
border:1px solid black;  /* 속성 표기법 */
}

.rightnow{
background-color:red;
border:1px solid red;
}

#qty{
margin:-10px;
border:0px;
font-size:0.7rem;
}

/* .plus, .minus{
font-size:1.1rem;
} */

</style>

<script type="text/javascript">

		var price = 10000 ; /* 단가 */
		/* var maxPurchaseSize = 5 ; /* 최대 구매 가능 개수 */ 
		const maxPurchaseSize = 5 ; /* 최대 구매 가능 개수 */
		/* const 키워드는 읽기 전용(자바의 final과 동일 개념) */
		
		
		$(document).ready(function(){
			
			$('#qty').innerWidth($('.minus').innerWidth() - 3) ;
			
			$('#totalprice').text('0');  /* 처음 시작 값 */
			
			/* attr() 함수는 속성(attribute)을 읽거나 쓰기 위한 함수 */
			$('.small_image').click(function(){
				$('.active_image').attr('src', $(this).attr('src'));
			});

			/* -/+를 눌렀을 때 값이 조정될 수 있게 하는 방법 */
			$('.plus').click(function(){ /* 사용자가 +를 눌렀을 때 */
				var qty = $('#qty').val();
				if(qty == maxPurchaseSize){
					
					swal('최대'+maxPurchaseSize+'개 까지만 주문이 가능합니다');
				return ; /* return 구문으로 함수 더이상 실행 안 하도록 함 */
				}
				/* Number는 Integer.parseInt()와 동일한 효과 */
				var newQty = Number(qty) + 1;
				if(qty == ''){
					$('#qty').val('1');
				}else{
					$('#qty').val(newQty);
				}
				$('#totalprice').text(newQty*price) ;
			});
/* @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ */
			$('.minus').click(function(){ /* 사용자가 -를 눌렀을 때 */	
				var qty = $('#qty').val();
				if(qty == '0'){
					swal('최소수량을 입력하세요');
					return ; 
				}
				 var newQty = Number(qty) -1  ; 
				if(qty == ''){
					$('#qty').val('0');
				}else{
					$('#qty').val(newQty);
				}
				$('#totalprice').text(newQty*price) ;
			
			});
			
			/* blur 이벤트는 포커스를 잃어 버릴 때 반응 */
			$('#qty').blur(function(){
						var qty = $('#qty').val() ;
						
						/* isNaN() 함수는 숫자가 아니면 true를 반환함 */
						if(qty == '' || isNaN(qty) == true){

							swal('0이상' + maxPurchaseSize + '이하의 숫자만 가능합니다');
							$('#qty').val('0');
							$('#qty').focus();
							
							return ;
						}
						
						if(isNaN(qty) == false){ /* 숫자 형식으로 입력된 경우 */

							var newQty = Number(qty) ;
							if(newQty < 0 || newQty > maxPurchaseSize){ 
								swal('0이상' + maxPurchaseSize +'이하의 숫자만 가능합니다');
								$('#qty').val('0');
								$('#qty').focus();
								return ;
							}
						}
			});
		
			$('.cart').click(function(){
				var qty = $('qty').val();
					
					swal('최소 1개 이상 카트에 담을 수 있습니다.');
					
			});
			
			$('.rightnow').click(function(){
				var qty = $('qty').val();
			
					swal('즉시 구매는 최소 1개 이상 가능합니다');	
		
			});
	});
		
		
		
</script>

</head>

<body>

	<div class="container mt-3">

		<h2>상품 목록</h2>
		<p>고객들이 구매할 상품 목록을 보여 주는 페이지</p>
		<table class="table table-borderless">
			<thead>
				</thead>
				<tr>
					<td class="col-lg-5">
						<div class="card" style="width: 30rem;">
							<img src="./../image/2.jpg" class="card-img-top active_image" alt="아디다스">
						</div>
					</td>


					<td class="col-lg-1">
					 <img src="./../image/2.jpg"class="card-img-top small_image" alt="아디다스"> 
					 <img src="./../image/3.jpg" class="card-img-top small_image" alt="아디다스">
					 <img src="./../image/4.jpg" class="card-img-top small_image" alt="아디다스">
						
						</td>

					<td class="col-lg-6">
						<div class="card Leftside card_borderless" style="width: 18rem;">
							<h5 class="card-title">Adidas</h5>
							<p class="card-text">이 상품은 좋아요</p>
							
							<ul class="pagination">
								<li class="page-item"><a class="page-link minus" href="#">-</a></li>
								<li class="page-item"><a class="page-link" href="#">
								<input type="text" id="qty"value="0">
								</a></li>
								<li class="page-item"><a class="page-link plus" href="#">+</a></li>
							</ul>
							
							
							<p class="card-text">합계 : <span id="totalprice">10000</span>원</p>
						
						
						<div class="btn-group">
								  <button type="button" class="btn btn-primary cart">장바구니</button>
								  <button type="button" class="btn btn-primary rightnow">바로 구매</button>
						</div>
						</div>
					</td>
				</tr>
		</table>

		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item active"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item disabled"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
			<li class="page-item"><a class="page-link" href="#">...</a></li>
		</ul>

	</div>

</body>
</html>
