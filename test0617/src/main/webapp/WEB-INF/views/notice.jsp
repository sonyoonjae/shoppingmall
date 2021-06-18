<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/notice_list.css">
</head>
<body>
<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
<c:import url="/WEB-INF/views/includes/nav.jsp"></c:import>

  <section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="./noticeList" name="search" method="post">
        <select name="category" id="category">
          <option value="all">${(map.category eq 'all')? 'selected':'' }전체</option>
          <option value="notice_title">${(map.category eq 'notice_title')? 'selected':'' }제목</option>
          <option value="notice_content">${(map.category eq 'notice_content')? 'selected':'' }내용</option>
        </select>

        <div class="title">
          <input type="text" size="16" name="search" id="search" value="${map.search }">
        </div>
  
        <button type="submit"><i class="fas fa-search"></i></button>
      </form>
    </div>

   <table>
      <colgroup>
        <col width="18%">
        <col width="50%">
        <col width="18%">
        <col width="10%">
      </colgroup>
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
      <tr>
        <td><span class="table-notice">NOTICE</span></td>
        <td class="table-title">신종코로나바이러스 예방관련 운영 안내</td>
        <td>2020-02-28</td>
        <td>2020-02-28</td>
      </tr>
   
   
   </table>

    <ul class="page-num">
      <li class="first"></li>
      <li class="prev"></li>
      <li class="num">
        <div>1</div>
      </li>
      <li class="next"></li>
      <li class="last"></li>
    </ul>

    <a href="write"><div class="write">쓰기</div>
  </section>

  	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</body>
</html>