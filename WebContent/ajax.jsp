<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

<script src="http://code.jquery.com/jquery-migrate-1.1.0.min.js"></script>

<script>

 $(document).ready(function(){

  //폼아이디가 my 의 submit 이벤트 받음

  $('#my').submit(function(event){

   var url = '/teamProjectNew/TestAjax';  //서블릿 위치

   $('#wrap').load(url,$(this).serialize());   //jquery의 serialize 함수 이용하여 폼데이터들을 직렬화로 전송시키고 응답 받음

   

   event.preventDefault();  //기본 폼의 submit이 발생되지 않게 막기

  });

 });

</script>
</head>

<body>

<form id='my' >

 <input type='text' id='title' name='title'  value='KIM'  />

 <input type='submit' value='전송' />

</form>

<div id='wrap'>

</div>

</body>

</html>
