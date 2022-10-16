<%@page import="java.security.spec.DSAGenParameterSpec"%>
<%@page import="org.apache.coyote.AbstractProcessorLight"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.giohangbean"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
	<title>AJax</title>
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
			      <li class="active"><a href="htgio.jsp">Giỏ Hàng (<%= gh.demsl() %>)</a></li>
			      <li><a href="#">Thanh Toán</a></li>
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
		<table width="600" class="table table-hover">
		   		<%
		   			
		   				if(gh.ds.size()==0){
		   					response.sendRedirect("htsach.jsp");
		   				}
		   				for(giohangbean h: gh.ds){%>
		   				<tr>
		   					<td>
		   					<%=h.getMasach() %>
		   					</td>
		   					<td>
		   					<img  src="<%=h.getAnh()%>">
		   					</td>
		   					<td>
		   					<%=h.getTensach() %>
		   					</td>
		   					<td>
		   					<%=h.getSoluong() %>
		   					<form action="sua.jsp?ms=<%=h.getMasach()%>"  method="post">
		   					   <input name="txtsl" type="number" size='10' value="0">
		   					    <input name="but1" type="submit" value="Sửa">
		   					</form>
		   					</td>
		   					<td>
		   					<%=h.getThanhtien() %>
		   					
		   					</td>
		   					<td>
		   						<a href="xoa.jsp?ms=<%=h.getMasach()%>">Xoá</a>
		   						<input type="checkbox" name="xoalist" form="checkxoa" value="<%=h.getMasach()%>"/>
		   					</td>
		   				
		   					
		   		<%} %>
		   		</tr>
		   			
		   			
	   		 </table>
	   						 <form id="checkxoa" action="xoalist.jsp?misxoa=true" method="post" >
		   							<button>Xóa đã chọn</button>
		   						</form>
	   		 <tr>
	   		 			
		   		   		<h3 style="font-weight: bold;" align="right">Thành tiền: <%=gh.tongtien() %></h3>
		   		   		
		   		   </tr>
	   		 
	</div>
	

</body>
</html>
