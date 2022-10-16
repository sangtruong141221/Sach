<%@page import="bo.giohangbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%	
		giohangbo  gh;
		String masach=request.getParameter("ms");
		String tensach=request.getParameter("ts");
		long soluong=(long)1;
		long giasach=Long.parseLong(request.getParameter("gia"));
		String anh=request.getParameter("anh");
		// nếu mua lần đầu
		
		if(session.getAttribute("gio")==null){
			gh=new giohangbo();
			session.setAttribute("gio", gh);
		};
		//b1 gán ss voà 1 biên
		 gh=(giohangbo) session.getAttribute("gio");
		//b2 thao tac tren bien gh
		
		gh.Them(masach, tensach, soluong,giasach, anh);
		
		//b3 lưu ds vào ss
		
		session.setAttribute("gio",gh);
		//hienthi gio
		response.sendRedirect("htgio.jsp");
	%>
</body>
</html>