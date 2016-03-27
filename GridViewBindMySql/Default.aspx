<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewBindMySql._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">               
                <h1>Automated Timetable Builder
                </h1>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>The courses available are: </h3>
    <asp:Panel ID="Panel1" runat="server" Width="100%" ScrollBars="Horizontal">
    <asp:GridView ID="grvCustomers" runat="server" AutoGenerateColumns="false">
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#BFE4FF" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="chkCtrl" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Course_ID" HeaderText="Course_ID" ItemStyle-Width="90" />
            <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" ItemStyle-Width="120" />
            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" ItemStyle-Width="90" />
            <asp:BoundField DataField="Section_ID" HeaderText="Section_ID" ItemStyle-Width="100" />
            <asp:BoundField DataField="Max_Seat" HeaderText="Max_Seat" ItemStyle-Width="150" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="btnBind" runat="server" Text="Show selected courses" OnClick="btnBind_Click" />
    <br /><br />
    <asp:Label ID="lblmsg" runat="server" />
    </asp:Panel>
</asp:Content>
