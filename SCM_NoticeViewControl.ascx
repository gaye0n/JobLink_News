<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeViewControl.ascx.cs" Inherits="Admin_SCM_NoticeViewControl" %>


<div align="left" style="margin-left:15px; margin-bottom:10px;">
    <input type="button" value="Night" onclick="        <!--onclick의 속성값은 반드시 자바스크립트가 와야한다 -->
        document.querySelector('body').style.backgroundColor='black';
        document.querySelector('body').style.color = 'white'; "/>

    <!--document.querySelector('body') : body 태그를 선택하는 코드-->
    <!--body는 화면 전체-->

     <input type="button" value="Day" onclick="
        document.querySelector('body').style.backgroundColor='white';
        document.querySelector('body').style.color = 'black'; "/>
</div>



 
<table style="border: 1px solid #d7d7d7">
<asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
</td></tr></table>   


   
<table width="98%" style="border: 1px solid #d7d7d7">
<tr height="30px"  bgcolor="#5D7B9D"><td  colspan="4" align="center"><font color="#ffffff"><b>새 소식 News</b></td></tr> 
</table>
<br/>

<table width="98%" style="border: 0px solid #FFFFFF">
    <tr height="30px">
        <td align="center"><b><asp:Label ID="lblNewsTitle" runat="server"></asp:Label></b></td>  
    </tr>

    <tr>
        <td align="right"><b><asp:Label ID="lblDateMonthYear" runat="server"></asp:Label></b></td>
    </tr>

    <tr height="20px">
        <td align="right"><b>분야 : <asp:Label ID="lblsection" runat="server"></asp:Label></b></td>
    </tr>
</table>
<br/><br/>


			
<% if (lblwriter.Text != "")  { %>
<table width="98%" border="0" bordercolor="#FFFFFF">
    <tr>
        <% if (lblFileName.Text != "")  { %>
        <img src ="../../fileUpload/notice/<%= lblFileName.Text %>" width="600px" height="150px">
        <%} else { %> 
        <%} %>
            <!--<asp:Label ID="lblFileName" runat="server"></asp:Label><asp:Button  ID="btnFile"  runat="server" onclick="btnFile_Click" Text="download" />-->
        </td>
    </tr>
</table>
<br/><br/>


<table width="70%" border="0" bordercolor="#FFFFFF">
    <tr>
        <td width="98%" align="left" valign="top" rowspan="8"><asp:Label ID="lblContent" runat="server"></asp:Label></td>
    </tr>
</table>
<br/><br/>


<table width="98%" style="border: 0px solid #FFFFFF">
    <tr height="20px">
        <td align="right"><b>작성자 : <asp:Label ID="lblwriter" runat="server"></asp:Label></b></td> 
    </tr>
</table>
<br/><br/>

<%} else { %> 
<%} %>
<br>  

 




<table width=98% border="0" cellpadding="0" cellspacing="0" bgcolor="#5D7B9D" height=30>
                                        <tr><td width="80px" align=center><font color="#ffffff"><b>작성자</b></td>
                                            <td width="5px"></td>
                                            <td width="160px" align=left><font color="#ffffff">관리자</td>
                                            <td width="80px"><font color="#ffffff"><b>작성일</b></td>
                                            <td width="5px"></td>
                                            <td width="150px" align=left><font color="#ffffff"> 
					   <asp:Label ID="lblPostDate" runat="server"></asp:Label></td>
                                            <td width="80px"><font color="#ffffff"><b>조회수</b></td>
                                            <td width="5px"> </td>
                                            <td width="100px" align=left><font color="#ffffff">
                                                <asp:Label ID="lblReadCount" runat="server"></asp:Label>
                                            </td>  </tr>
</table>     



<table width="70%" border="0" bordercolor="#FFFFFF">
    <tr>
        <td  align=left><b><asp:Label ID="lblMemo" runat="server">테스트</asp:Label></b></td>
    </tr>
</table>





<table width=98% border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/Images/list_bt.gif" OnClick="btnList_Click" />
                        <asp:ImageButton ID="btnmodify" runat="server" ImageUrl="~/Images/re_bt.gif" OnClick="btnmodify_Click" />
                        <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" 
                                        OnClick="btnDelete_Click" style="height: 24px" />
                </td></tr>
            </table>
   

