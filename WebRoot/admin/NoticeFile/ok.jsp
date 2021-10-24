<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="GBK"%>
<%@ include file="../list_common.jsp"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Untitled Page</TITLE>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<meta http-equiv="Refresh"
			content="5;URL=${pageContext.request.contextPath}/NoticeFile/getAllUtil.do">
	</HEAD>
	<BODY
		style="BACKGROUND-POSITION-Y: -120px; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/bg.gif); BACKGROUND-REPEAT: repeat-x">

		<DIV>
			<TABLE height="100%" cellSpacing=0 cellPadding=0 width="100%"
				border=0>
				<TBODY>
					<TR
						style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/bg_header.gif); BACKGROUND-REPEAT: repeat-x"
						height=47>
						<TD width=10>
							<SPAN
								style="FLOAT: left; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_hl.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
						</TD>
						<TD>
							<SPAN
								style="FLOAT: left; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_hl2.gif); WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN><SPAN
								style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; FLOAT: left; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_hb.gif); PADDING-BOTTOM: 10px; COLOR: white; PADDING-TOP: 10px; BACKGROUND-REPEAT: repeat-x; HEIGHT: 47px; TEXT-ALIGN: center; 0 px: ">
								 </SPAN><SPAN
								style="FLOAT: left; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_hr.gif); WIDTH: 60px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 47px"></SPAN>
						</TD>
						<TD
							style="BACKGROUND-POSITION: 50% bottom; BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_rc.gif)"
							width=10></TD>
					</TR>
					<TR>
						<TD
							style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_ls.gif)">
							&nbsp;
						</TD>
						<TD
							style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-BOTTOM: 10px; COLOR: #566984; PADDING-TOP: 10px; BACKGROUND-COLOR: white"
							vAlign=top align=middle>

							<DIV align=middle>
								<table width="100%" border="0">
									<tr align="left">
										<br>

										<font size="2" color="green"> 恭喜你，上传成功..........</font>
										<br>
										<br/>
										<br/>
										网页将在5秒钟后自动跳转到首页，如没自动跳转请点击
										<a href="${pageContext.request.contextPath}/NoticeFile/getAllUtil.do">&nbsp;这&nbsp;里&nbsp;</a>

									</tr>

								</table>
							</DIV>
						</TD>
						<TD
							style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_rs.gif)"></TD>
					</TR>
					<TR
						style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_fs.gif); BACKGROUND-REPEAT: repeat-x"
						height=10>
						<TD
							style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_lf.gif)"></TD>
						<TD
							style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_fs.gif)"></TD>
						<TD
							style="BACKGROUND-IMAGE: url(${pageContext.request.contextPath}/common/images/main_rf.gif)"></TD>
					</TR>
				</TBODY>
			</TABLE>
		</DIV>
	</BODY>
</HTML>
