<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form action="text1.jsp" method ="get">
				 <input type="text"  name="txtn"><br>
		 		<button type="submit" name="butdn" value="tong">tong</button>
			</form>
			<hr>
		<%
			String tong=request.getParameter("txtn");
		if(session.getAttribute("s")==null)
			session.setAttribute("s",0);
			if(tong != null){
				int sum=Integer.parseInt(tong);
				//b1 Gán biến ss cho 1 biến
				int ss= (int)session.getAttribute("s");
				//b2 tham ta trên bien
				ss= ss+sum;
				session.setAttribute("s", ss);
				
				out.print("tong s la: " + session.getAttribute("s") );
			}
		%>
		<a href="htsach.jsp">Mo ta trang chu</a>
</body>
</html>