<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeModifyControl.ascx.cs" Inherits="Admin_SCM_NoticeModifyControl"  %>

<script src="build/total_score.js" type="text/javascript" charset="utf-8"></script>

<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
	<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script>
	
	<style type="text/css" media="screen">
		.kalendae .k-days span.closed {
			background:red;
		}
	</style>
	
	
	
<table width=98% style="border: 1px solid #d7d7d7">
<tr height=30  bgcolor="#5D7B9D"><td  colspan=4 align=center><font color="#ffffff"><b>새 소식 News</b></td></tr> 
<tr height=30>
<td bgcolor="#efefef" width="10%" align=center><b> 기사 제목 </b></td>
<td align=left><b><asp:TextBox ID="txtNewsTitle" runat="server" Width="40%"></asp:TextBox> 연예 경제 금융 정치 IT/과학 의료 </b></td>  

<td bgcolor="#efefef" width="10%" align=center><b> 작성일자 </b></td>
<td  align=left><b><asp:TextBox ID="txtDateMonthYear" runat="server" Width="50%" class="auto-kal"></asp:TextBox></b></td>
</tr>
</table>
<br>




<table width="98%" border="1" bordercolor="#d7d7d7">
<tr height="30px">
<td bgcolor="#efefef" width="10%" align=center><b> 작성자 </b></td>
<td  width="30%" align=left><b><asp:TextBox ID="txtwriter" runat="server" Width="50%"></asp:TextBox></b>
분야 </b>
<asp:DropDownList ID="txtsection" runat="server">
    <asp:ListItem Value="연예">연예</asp:ListItem>
    <asp:ListItem Value="경제">경제</asp:ListItem>
    <asp:ListItem Value="금융">금융</asp:ListItem>
	<asp:ListItem Value="정치">정치</asp:ListItem>
	<asp:ListItem Value="IT/과학">IT/과학</asp:ListItem>
	<asp:ListItem Value="의료">의료</asp:ListItem>
	 		
</asp:DropDownList>

</td>
<td bgcolor="#efefef" width="10%" align=center rowspan=10><b> 기사 내용 </b></td>
<td width="50%" align=left valign=top rowspan=10><asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine"  width="99%" Rows="30"></asp:TextBox></td></tr>
<tr>
<td bgcolor="#efefef" width="10%" align=center><b> 이미지 </b></td>
<td  align=left><% if (lblFileName.Text != "")  { %>
<img src ="../../fileUpload/notice/<%= lblFileName.Text %>" width=50%>
<%} else { %><%} %></td></tr>
<td bgcolor="#efefef" width="10%" align=center><b>   </b></td>
<td  align=left><!--<asp:Label ID="lblFileName" runat="server"></asp:Label>--><asp:FileUpload ID="FileUpload1" runat="server" /></asp:FileUpload></td>
</tr>
</table>
<br/> 

<table width="98%" border="1" bordercolor="#d7d7d7">
	<tr>
		<td bgcolor="#efefef" width="4.5%" align="center" rowspan="2"><b> 비고 </b></td>
		<td width="40%" align="left" valign="top">
		<asp:TextBox ID="txtMemo" runat="server" TextMode="MultiLine"  width="100%" height="50px"></asp:TextBox>
		</td> 
	</tr>
</table> 
 
 
 <table width="100%" border="0">
		<tr><td><HR SIZE=1></td></tr>
                <tr><td align="right">
                        <asp:ImageButton ID="btnSubmit" runat="server" ImageUrl="~/Images/ok_bt.gif" OnClick="btnSubmit_Click" />
                        <asp:ImageButton ID="btnCancel" runat="server" ImageUrl="~/Images/cancel_bt.gif"
                            OnClick="btnCancel_Click" />
                </td></tr>
</table>
  
 




                 
 



 

 