<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>  
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script>
	$(document).ready(function() {
		$(".datepicker").datepicker();
	});

	</script>


	
	<style>
		* {
			box-sizing: border-box;
			-moz-box-sizing: border-box;
			-webkit-box-sizing: border-box;
		}
		body {
			font-family: 'Roboto', sans-serif;
			color: #546E7A;
		}
		.wrapper {
			max-width: 18rem;
			padding: 0 0.5rem;
			margin-left: auto;
			margin-right: auto;
			padding-top: 4rem;
		}
		label {
			font-size: 0.75rem;
			font-weight: 400;
			display: block;
			margin-bottom: 0.5rem;
			color: #B0BEC5;
			border: 1px solid #ECEFF1;
			padding: 0.5rem 0.75rem;
			border-radius: 0.5rem;
		}
		input {
			font-family: 'Roboto', sans-serif;
			display:block;
			border: none;
			border-radius: 0.25rem;
			border: 1px solid transparent;
			line-height: 1.5rem;
			padding: 0;
			font-size: 1rem;
			color: #607D8B;
			width: 100%;
			margin-top: 0.5rem;
		}
		input:focus {outline: none;}
		
		#ui-datepicker-div {
			display: none;
			background-color: #fff;
			box-shadow: 0 0.125rem 0.5rem rgba(0,0,0,0.1);
			margin-top: 0.25rem;
			border-radius: 0.5rem;
			padding: 0.5rem;
		}
		table {
			border-collapse: collapse;
			border-spacing: 0;
		}
		.ui-datepicker-calendar thead th {
			padding: 0.25rem 0;
			text-align: center;
			font-size: 0.75rem;
			font-weight: 400;
			color: #78909C;
		}
		.ui-datepicker-calendar tbody td {
			width: 2.5rem;
			text-align: center;
			padding: 0;
		}
		.ui-datepicker-calendar tbody td a {
			display: block;
			border-radius: 0.25rem;
			line-height: 2rem;
			transition: 0.3s all;
			color: #546E7A;
			font-size: 0.875rem;
			text-decoration: none;
		}
		.ui-datepicker-calendar tbody td a:hover {	
			background-color: #E0F2F1;
		}
		.ui-datepicker-calendar tbody td a.ui-state-active {
			background-color: #009688;
			color: white;
		}
		.ui-datepicker-header a.ui-corner-all {
			cursor: pointer;
			position: absolute;
			top: 0;
			width: 2rem;
			height: 2rem;
			margin: 0.5rem;
			border-radius: 0.25rem;
			transition: 0.3s all;
		}
		.ui-datepicker-header a.ui-corner-all:hover {
			background-color: #ECEFF1;
		}
		.ui-datepicker-header a.ui-datepicker-prev {	
			left: 0;	
			background: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgdmlld0JveD0iMCAwIDEzIDEzIj48cGF0aCBmaWxsPSIjNDI0NzcwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjI4OCA2LjI5NkwzLjIwMiAyLjIxYS43MS43MSAwIDAgMSAuMDA3LS45OTljLjI4LS4yOC43MjUtLjI4Ljk5OS0uMDA3TDguODAzIDUuOGEuNjk1LjY5NSAwIDAgMSAuMjAyLjQ5Ni42OTUuNjk1IDAgMCAxLS4yMDIuNDk3bC00LjU5NSA0LjU5NWEuNzA0LjcwNCAwIDAgMS0xLS4wMDcuNzEuNzEgMCAwIDEtLjAwNi0uOTk5bDQuMDg2LTQuMDg2eiIvPjwvc3ZnPg==");
			background-repeat: no-repeat;
			background-size: 0.5rem;
			background-position: 50%;
			transform: rotate(180deg);
		}
		.ui-datepicker-header a.ui-datepicker-next {
			right: 0;
			background: url('data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMyIgdmlld0JveD0iMCAwIDEzIDEzIj48cGF0aCBmaWxsPSIjNDI0NzcwIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik03LjI4OCA2LjI5NkwzLjIwMiAyLjIxYS43MS43MSAwIDAgMSAuMDA3LS45OTljLjI4LS4yOC43MjUtLjI4Ljk5OS0uMDA3TDguODAzIDUuOGEuNjk1LjY5NSAwIDAgMSAuMjAyLjQ5Ni42OTUuNjk1IDAgMCAxLS4yMDIuNDk3bC00LjU5NSA0LjU5NWEuNzA0LjcwNCAwIDAgMS0xLS4wMDcuNzEuNzEgMCAwIDEtLjAwNi0uOTk5bDQuMDg2LTQuMDg2eiIvPjwvc3ZnPg==');
			background-repeat: no-repeat;
			background-size: 10px;
			background-position: 50%;
		}
		.ui-datepicker-header a>span {
			display: none;
		}
		.ui-datepicker-title {
			text-align: center;
			line-height: 2rem;
			margin-bottom: 0.25rem;
			font-size: 0.875rem;
			font-weight: 500;
			padding-bottom: 0.25rem;
		}
		.ui-datepicker-week-col {
			color: #78909C;
			font-weight: 400;
			font-size: 0.75rem;
		}

	</style>
	
</head>
<body>
	<div class="wrapper">
		<label for="datepicker">Pick a Date
			<input type="text" class="datepicker" autocomplete="off">
		</label>	
	</div>
</body>

</html>