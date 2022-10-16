<%@page import="bo.giohangbo"%>
<%@page import="bo.loaibo"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.sachbean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.sachdao"%>
<%@page import="bean.loaibean"%>
<%@page import="dao.loaidao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%giohangbo gh= (giohangbo) session.getAttribute("gio"); %>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
    		<div class="navbar-header">
      			<a class="navbar-brand" href="htsach.jsp">Trang Chủ</a>
    		</div>
		    <ul class="nav navbar-nav">
			      <li class="active"><a href="htgio.jsp">Giỏ Hàng (<%if(gh!=null){ %><%=gh.demsl()%><%}%>)</a></li>
			      <li><a href="htgio.jsp">Thanh Toán</a></li>
			      <li><a href="#"><%=session.getAttribute("s")%></a></li>
		    </ul>
		    <ul class="nav navbar-nav navbar-right">
			      <li><a href="remove.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			   
			      <li>
			         <%if(session.getAttribute("dn")==null) {%>
			         <a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			      <%}else{ %>
			    	    <a href="#"><span class="glyphicon glyphicon-log-in"></span>
			    	    Hi<%=session.getAttribute("dn") %></a></li>
			      <%}
			    	  %>
			      
		    </ul>
  		</div>
	</nav>
	
	<div class="container">
		<div class="container-fluid" style="margin: 30px">
      		<h1 class="">Sách Online</h1>
		    <ul class="nav navbar-nav">
		    
				<%
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("uft-8");
				loaibo loai=new loaibo();
					for(loaibean l: loai.getloai()){%>
						<li><a href="htsach.jsp?ml=<%=l.getMaloai()%>">
						<%=l.getTenloai()%></a></li>
					<%
					}
				%>
		    </ul>
		    
		    <form class="navbar-form navbar-left">
				 <input type="text" class="form-control" placeholder="Tìm kiếm ở đây" name="search">
		 		<button type="submit" class="btn btn-primary">Submit</button>
			</form>
			<%
			
			%>
		</div>
		<table width="600">
		   		<%  sachbo sdao= new sachbo();
		   		    ArrayList<sachbean> dssach = sdao.getsach();
		   		    
		   		    if (request.getParameter("search")!=null){
		   		    	dssach = sdao.timkiemteni(dssach, request.getParameter("search"));
		   		    	if (dssach.isEmpty()) {
		   		 %>   		
		   		 			<h4>Không có sách tên <%=request.getParameter("search")%></h4>
		   		 <%   	}
		   		    }
		   		    else if (request.getParameter("ml")!=null){
		   		    	dssach = sdao.timkiemloai(dssach, request.getParameter("ml"));
		   		    	
		   		    	if (dssach.isEmpty()) {
		   		 %>   		
		   		   		 			<h4>Không có sách loại <%=request.getParameter("ml")%></h4>
		   		 <%   	
		   		   		 }
		   		    }
		   		    
			   		    int n=dssach.size();
			   		    for(int i=0;i<n;i++){
			   		    	sachbean s = dssach.get(i);
			   		%>
			   		     <tr>
				   		      <td>
					   		  	 <img style="border-radius: 6px" src="<%=s.getAnh() %>"> <br>
					   		     <%=s.getTensach() %> <br>
					   		     <%=s.getTacgia() %><br>
					   		     <%=s.getGia() %><br>
					   		     <a href="giohang.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
					   		       <img src="buynow.jpg">
					   		     </a>
				</td>
				   		   
				   		   	  <% i++; 
				   		   	  if(i<n){
				   		      		s = dssach.get(i);%>
				   		     		<td>
							   	 <img style="border-radius: 6px" src="<%=s.getAnh() %>"> <br>
					   		     <%=s.getTensach() %> <br>
					   		     <%=s.getTacgia() %><br>
					   		     <%=s.getGia() %><br>
					   		       <a href="giohang.jsp?ms=<%=s.getMasach()%>&ts=<%=s.getTensach()%>&gia=<%=s.getGia()%>&anh=<%=s.getAnh()%>">
					   		       <img src="buynow.jpg">
					   		     </a>
						   		     </td>
					   		
				   		     <%} %>
				   		  </tr>
				   	<%} %>
				   	
		   		   
	   		 </table>
	</div>
	

</body>
</html>