<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



register.jspeke-><div class="form-floating">
  <label for="Vid">Vid</label>
  <input type="text" id="Vid" name="vid">

</div>

profile jspeke -><input type="hidden" name="vid" value="${own.vid}">


update.jsp eke-><div class="form-floating">
  <label for="Vid">Vid</label>
  <input type="text" id="Vid" name="vid" value="${param.vid}">

</div>

vehicletable.java eke-><th scope="col">vid</th>
<td>${own.vid}</td>



profile.jsp eke-><div class="form-floating">
  <label for="Vid">Vid</label>
  <input type="text" id="Vid" name="vid" value="${own.vid}">
</body>
</html>