<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


				<!-- comment.jsp start-->
				
				
					<c:choose>
						<c:when test="${id != null}">
						
							<form role="form" action="/board/get" method="post">
					
					<div class="form-field" style="margin-bottom: 30px;">
							<label>comment</label>
							<input type="text" class="full-width" style="margin: 0;"
								name="c_content" id="cWebsite1" placeholder="댓글을 적어주세요."
								onkeyup="chkByte(this, 200)"> 
							<span id="contentByte" style="font-size: 14px;">0/200</span>
						</div>

						<input type="hidden" name="b_no" value="${board.b_no}">
						<input type="hidden" name="c_user_id" value="${id}">
						
						
							<button type="submit" class="submit button-primary full-width-on-mobile">submit</button>
							</form>
						</c:when>
						<c:otherwise>
						<div class="form-field" style="margin-bottom: 30px;">
							<label>comment</label>
							<input type="text" class="full-width" style="margin: 0;"
								name="c_content" id="cWebsite1" placeholder="댓글을 적어주세요."
								onkeyup="chkByte(this, 200)"> 
							<span id="contentByte" style="font-size: 14px;">0/200</span>
						</div>
							<button class="submit button-primary full-width-on-mobile" onclick="needLogin()">submit</button>

						</c:otherwise>
					</c:choose>


				<table width="100%" style="text-align: center;"
				class="table table-striped table-bordered table-hover"
				id="dataTables-example">
				
				<tbody>
					<c:forEach items="${list}" var="comment">
					
						<tr class="odd gradeX">
							<td style="width: 60px;"> </td>
							<td style="font-size:15px;"><c:out value="${comment.c_content}" /></td>
							<td style="text-align: center; width: 300px; font-size:12px;"><fmt:formatDate value="${comment.c_date}"
									pattern="yy/MM/dd HH:mm:ss" /></td>

						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			
<script>
function chkByte(obj, maxByte) {

	var strValue = obj.value;
	var strLen = strValue.length;
	var totalByte = 0;
	var len = 0;

	for (var i = 0; i < strLen; i++) {
		totalByte += (strValue.charCodeAt(i) > 128) ? 2 : 1;

		if (totalByte <= maxByte) {
			len = i + 1;
		}
	}

	document.getElementById("contentByte").innerText = totalByte + "/" + maxByte;

	if (totalByte > maxByte) {
		alert(maxByte + "byte를 초과 입력 할 수 없습니다.");
		obj.value = strValue.substr(0, len);
	}
}



</script>


<!-- comment.jsp end -->