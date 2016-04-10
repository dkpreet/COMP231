<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AfterLogin.aspx.cs" Inherits="GridViewBindMySql.AfterLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>Hi <%=Session["loggedIn"] %> </h1>
        <p><a href="/">Click here </a> to make your timetable</p>
    </div>
    </form>
</body>
</html>
