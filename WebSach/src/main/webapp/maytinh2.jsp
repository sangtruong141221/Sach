<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- <%    int a=0,b=0,kq=0;
		//Lay ve a,b tu client gui len
  		String tama=request.getParameter("txta");
 		String tamb=request.getParameter("txtb");
 		if(tama!=null && tamb!=null){
 			//Doi tama, tamb ra so
 			 a=Integer.parseInt(tama);
 			 b=Integer.parseInt(tamb);
 			 kq=0;
 			if(request.getParameter("butc")!=null)//Nguoi dung chon nut +
 			  kq=a+b;
 			else
 				if(request.getParameter("butt")!=null)//Nguoi dung chon nut -
 	 			  kq=a-b;
 	 			else
 	 				if(request.getParameter("butn")!=null)//Nguoi dung chon nut +
 	  			  		kq=a*b;
 	  				else
 	  					kq=a/b;
 			//out.print("Ket qua="+  kq);
 		}
  %> --%>
 	<%
 	double a=0,b=0,kq=0;
 	if(request.getAttribute("bkq")!=null)
 		 kq =(double) request.getAttribute("bkq");
 	if(request.getAttribute("a")!=null)
		a =(double) request.getAttribute("a");
 	if(request.getAttribute("b")!=null)
		 b =(double) request.getAttribute("b");
 	%>
  <form action="test" method="post">
       a= <input name="txta" type="number" value="<%=a%>" > <br>
       b= <input name="txtb" type="number" value="<%=b%>"> <br>
       kq= <input name="txtkq" type="number"  value="<%=kq%>"> <br>
       <input name="butc" type="submit" value="+"> 
       <input name="butt" type="submit" value="-">
       <input name="butn" type="submit" value="*">
       <input name="butchia" type="submit" value="/">
    </form>


</body>
</html>