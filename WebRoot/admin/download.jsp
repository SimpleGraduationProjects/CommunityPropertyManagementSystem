<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<%
		out.clear();      //清空缓存的内容
    	out = pageContext.pushBody();  //更新PageContext的out属性的内容
		java.io.BufferedInputStream bis = null;
		java.io.BufferedOutputStream bos = null;
		try {
			String filename = request.getParameter("filename");
			//filename = new String(filename.getBytes("iso8859-1"), "utf-8");
			response.setContentType("application/x-msdownload");
			response.setHeader(
					"Content-disposition",
					"attachment; filename="
							+ new String(filename.getBytes("gb2312"),
									"iso8859-1"));
			bis = new java.io.BufferedInputStream(
					new java.io.FileInputStream(config.getServletContext()
							.getRealPath("upload/" + filename)));

			bos = new java.io.BufferedOutputStream(
					response.getOutputStream());
			byte[] buff = new byte[2048];
			int bytesRead;
			while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
				bos.write(buff, 0, bytesRead);
			}
			 
		} catch (Exception e) {

		} finally {

			if (bos != null)
				bos.close();
			if (bis != null)
				bis.close();
		}
	%>

</body>
</html>