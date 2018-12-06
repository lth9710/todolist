<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	table{
	text-align: center;	
	margin-left: auto;
	margin-right: auto;
    border: 2px solid grey;
    border-style: outset;
    border-image:outset;
    padding: 40px;
    height: 200px;    
	}	
	
	tr{
	text-align: left;		
	}	
	
	form{
	text-align: center;	
	}
	
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>


<!------ Include the above in your HEAD tag ---------->
       <div class="modal-content">
          <div class="modal-header">
              <h4 align="center">일정등록 </h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-xs-6">
                      <div class="well">
                          <form id="inputForm" method="POST" action="/list/">
                              <div class="form-group">
                                  <label for="title" class="control-label">제목</label>
                                  <input type="text" class="form-control" id="title" name="title" title="Please enter you title" placeholder="제목을 입력하세요">
                                  <span class="help-block"></span>
                              </div>
                              <div class="form-group">
                                  <label for="content" class="control-label">내용</label>
                                  <input type="text" class="form-control" id="content" name="content" title="Please enter your content" placeholder="내용을 입력하세요">
                                  <span class="help-block"></span>
                                   <button type="button" id="inputbutton" class="btn btn-default btn-block" >input</button>
                              </div>
                          </form>
                      </div>
                  </div>
      </div>
  </div>
</div>
</body>
</html>