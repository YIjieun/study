<%@page contentType="text/html;charset=euc-kr"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<HTML>
 <HEAD>
  <TITLE> 사진인화 </TITLE>
  <link href="style.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="../css/style.css" type="text/css"/>
<script type="text/javascript" src="../js/dolphin.js"></script>
 </HEAD>
 <BODY>
 <form method="POST">
 <table width="1026" border="0">
   <tr>
     <td width="6">&nbsp;</td>
     <td width="1000">&nbsp;</td>
     <td width="10">&nbsp;</td>
   </tr>
   <tr>
     <td height="464">&nbsp;</td>
     <td rowspan="2"><TABLE width="1000" height="507" border="1" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
       <!-- 상단메뉴 -->
       <TR>
         <TD height="50">로고 준비 중. </TD>
         <TD height="50">

<form method="POST">
	<div id="dolphincontainer">
	<div id="dolphinnav">
	<ul>
	<li><a HREF="../view/intro_01.jsp" rel="main"><span>Home</span></a></li>
	<li><A HREF="../board1/list.do" rel="board"> <span>게시판</span></a></li>
	<li><A HREF="../view/faq_01.jsp" rel="faq"><span>FAQ</span></a></li>
	<li><A HREF="../view/support_01.jsp" rel="cen"><span >고객센터</span></a></li>
	<li><A HREF="../adboard/list.do" rel="qna"><span>묻고답하기</span></a></li>
	</ul>
	</div>
	<div id="dolphin_inner">
	<div id="main" class="innercontent"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;메인&nbsp;|&nbsp;공지사항</font></div>
	<div id="board" class="innercontent"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;게시판&nbsp;</font></div>
	<div id="faq" class="innercontent"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;faq&nbsp;</font></div>
	<div id="cen" class="innercontent"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;고객지원&nbsp;</font></div>
	<div id="qna" class="innercontent"><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;Q&A&nbsp;</font></div>
	</div>
	</div>
<script type="text/javascript">
dolphintabs.init("dolphinnav", 1)
</script>
</form>	
		</TD>
       </TR>
       <!--본문내용  -->
       <TR>
         <!-- 좌측메뉴 -->
         <TD width="300" height="39" valign="top">
				<c:if test="${mem_id==null}">
				<jsp:include page="/LoginForm/Login.jsp" flush="false"/>
				</c:if>
				<c:if test="${mem_id!=null}">
				<jsp:include page="/LoginForm/Mem_list.jsp" flush="false"/>
				</c:if>    </TD>
         <!--넘어오는 파라미터값에 따라 본문내용변경 -->
         <TD rowspan="2" valign="top" name="show">
<center><b>글수정</b>
<br>
<!-- updatePro.jsp  -->
  <form method="post" name="writeform" 
        action="/board1/updatePro.do?pageNum=${pageNum}"
  onsubmit="return writeSave()">
  
<!--  -->
<table width="400" border="1" cellspacing="0" 
       cellpadding="0"  bgcolor="#FFFFFF" align="center">
   <tr>
    <td  width="70"  bgcolor="#99CCFF" align="center">이 름</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer" 
              value="${article.writer}">
       <!-- hidden parameter -->
       <input type="hidden" name="num" 
              value="${article.num}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#99CCFF" align="center" >제 목</td>
    <td  align="left" width="330">
    
       <input type="text" size="40" 
              maxlength="50" name="subject" 
              value="${article.subject}"></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#99CCFF" align="center">Email</td>
    <td  align="left" width="330">
       <input type="text" size="40" 
              maxlength="30" name="email" 
              value="${article.email}" ></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#99CCFF" align="center" >내 용</td>
    <td  align="left" width="330" >
     <textarea name="content" rows="13" cols="40">
      ${article.content}
     </textarea> </td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="#99CCFF" align="center" >비밀번호</td>
    <td  align="left" width="330" >
     <input type="password" size="8" maxlength="12" 
            name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2 bgcolor="#99CCFF" align="center"> 
  <input type="submit" value="글수정" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" 
      OnClick="window.location='/board1/list.do?pageNum=${pageNum}'">
</td></tr></table>   
</form>
		 </TD>
       </TR>
       <TR>
         <TD width="300" valign="top"><jsp:include page="/module/introLeft.jsp" flush="false"/></TD>
       </TR>
       <TR>
         <TD colspan="2" height="50">
           <jsp:include page="/module/bottom.jsp" flush="false"/>     
    </TD>
       </TR>
       <!-- end -->
     </TABLE></td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
   <tr>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
     <td>&nbsp;</td>
   </tr>
 </table>
 </form>
 </BODY>
</HTML>