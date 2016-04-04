<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayTimeTable.aspx.cs"  MasterPageFile="~/Site.Master" Inherits="GridViewBindMySql.DisplayTimeTable" %>


 

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div class="content">
       
        <div class="studentinfomation"> <p>Display the finalized time table:
        </p>
      </div>
       
       
    </div>


    
    <table class="gridtable" summary="This layout table is used to present the weekly course schedule." width="800px">
        <tr>
           
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Monday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Tuesday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Wednesday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Thursday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Friday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Saturday&nbsp;&nbsp;&nbsp;</th>
            <th class="ddheader" scope="col">&nbsp;&nbsp;&nbsp;Sunday&nbsp;&nbsp;&nbsp;</th>
        </tr>
      
       <%= displayTimeTable %>
       
      
      
    </table>


    <asp:Button ID="btnBind" runat="server" Text="Cancel the selection" OnClick="btnBind_Click" />

    
    <br />   <style type="text/css">
table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}
</style>
        </asp:Content>