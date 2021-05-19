<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>jquery/upload2.html</title>
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
	
			$.ajax({
				url: '../getRankListServlet', //요청하는페이지
				dataType: 'json', //json -> object
				success: function (result) {
					console.log(result);

					
						let alink = $('<a />').attr('href', '#').html(obj.title); // 링크클릭시 화면에 데이터
						alink.click(linkClickCallBack);
						$title.click(function () {
							console.log('title');
						});
					
				},

				error: function (err) {
					console.log(err);
				}
			})
			
			// file이 선택한 이미지 값 -> img 나온다
			$("#filename").change(function () {
				for (let file of this.files) {
					$('#img').attr('src', URL.createObjectURL(file));
				}
			});

		
				// 비동기 호출 파일업로드서블릿..
				$.ajax({
					contentType: false,
					processData: false,
					url: $('#frm').attr('action'),
					type: 'post',
					dataType: 'json',
					data: data,
					success: createRow,
					error: function (err) {
						console.log(err);
					}
				});
			});

			
	</script>
</head>

<body>
	<h1>Ajax Rank output</h1>
	<form id='frm' action='../RankforwardServlet' method='post'>
		

	</form>
</body>

</html>