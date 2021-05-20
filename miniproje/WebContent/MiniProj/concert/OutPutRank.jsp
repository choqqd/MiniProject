<%@page import="ConcertRankService.RankVO"%>
<%@page import="java.util.List"%>
<%@page import="ConcertRankService.RankDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>RankTable</title>
	<script src="../js/jquery-3.6.0.min.js"></script>
	<script src="../js/jquery-3.6.0.min.js"></script>
	<style>
		#img {
			height: 600px;
			width: 400px;
		}

		table {
			margin-bottom: 20px;
			border-collapse: collapse;
		}
	</style>
	<script>
	
		$(document).ready(function () {
			let $table = $('<table />').attr('border', '1');
			let $tr = $('<tr />');
			// db에 데이터를 화면에 출력 <div id="show"><table> </table></div>
			$.ajax({
				url: '../getRankListServlet', //요청하는페이지
				dataType: 'json', //json -> object
				success: function (result) {
					console.log(result);

					$table.append(getTitle());
					// 테이블 데이터 부분
					for (let obj of result) {
						let $tr = $('<tr />');
						let alink = $('<a />').attr('href', '#'); // 링크클릭시 화면에 데이터
						
						
						alink.click(linkClickCallBack);
						$tr.click(function () {
							console.log('tr클릭');
						})
						$tr.on({
							mouseover: function () {
								$(this).css({
									'background-color': 'lightcoral'
								});
							},
							mouseout: function () {
								$(this).css({
									'background-color': 'violet'
								});
							}
						});

						$tr.append(
							$('<td />').html(obj.),
							$('<td />').append(alink),
							
						)
						$table.append($tr);
					}
					$('#show').append($table);
				},

				error: function (err) {
					console.log(err);
				}
			})
			
			// linkTag click callback
			function linkClickCallBack(e) {
				console.log('a클릭', $(this).parentsUntil('table').eq(0).html());
				let num = $(this).eq().html();
				num = $(this) // a태그
					.parent() // td태그
					
				e.preventDefault(); // default 기능 차단
				e.stopPropagation(); // 이벤트 전파 차단
				$.ajax({
					url: '../getRankServlet', // 호출할 페이지(servlet)
					data: 'obj', // 서블릿에 출력 obj니까 여기도 obj?????????????????????????????????????
					dataType: 'json',
					type: 'get',
					success: function (result) {
						console.log(result);
						// 화면에 가져온 정보를 보여주도록
						$('#img').attr('src', '' + miniposter); // 이거 테이블에 있던 내용이라서 서블릿에서 사진 링크 같이 당겨오게 만들어야
						$('#ShowName').val(result.ShowName);
					},
					error: function (reject) {
						console.log(reject);
					}
				});
			}


			// showName에 링크 -> img 나온다
			$("#miniposter").change(function () {
				for (let file of this.files) {
					$('#img').attr('src', );
				}
			});

			
			
		
		});
	</script>
</head>

<body>


	
</body>

</html>