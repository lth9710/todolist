<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style type="text/css">
	form{
	text-align: center;	
	}
	
</style>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
<!-- <script type="text/javascript">
$(document).ready(function(){
	var btn = $('#inputbutton');
	
	btn.click(function(){
		var title = $('#title').val();
		var content = $('#content').val();
		
		$.ajax({
			url:'/list/register',
			type:'POST',
			data:{'title':title, 'content':content}
		})
		.done(function(result){	
			/* if(result!=""){
				alert('등록되었습니다.');					
				location.href="/list/";
			}else{
				alert('등록에러발생.');
			}			 */
		})
		.fail(function(err){
			alert(err);
			console.log(err);
		});		
	});
});
	
</script> -->


                    <h4 align="center">일정등록 </h4>
        
          
                          <form id="inputForm" method="POST" action="/list/register">
                              <div class="form-group">
                                  <label for="title" >제목</label>
                                  <input type="text" id="title" name="title" title="Please enter you title" placeholder="제목을 입력하세요">
                                 
                              </div>
                              <div class="form-group">
                                  <label for="content" class="control-label">내용</label>
                                  <input type="text" id="content" name="content" title="Please enter your content" placeholder="내용을 입력하세요">
                                  
                                   <button type="submit" >input</button>
                              </div>
                          </form>

</body>
</html>