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
            <asp:BoundField DataField="Course_Code" HeaderText="Course_ID" ItemStyle-Width="90" />
            <asp:BoundField DataField="Course_Number" HeaderText="Course_Code" ItemStyle-Width="120" />
            <asp:BoundField DataField="Course_Name" HeaderText="Course_Name" ItemStyle-Width="90" />

        </Columns>
    </asp:GridView>
            </asp:Panel>

         <asp:Panel ID="Panel2" runat="server" Width="100%" ScrollBars="Horizontal">
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false">
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#BFE4FF" />
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="chkCtr2" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
                    <asp:BoundField DataField="Course_Code" HeaderText="Course Code" ItemStyle-Width="150" ReadOnly="True" SortExpression="Course_ID" />
        <asp:BoundField DataField="Course_Number" HeaderText="Course Number" ItemStyle-Width="250" ReadOnly="True" SortExpression="Course_Name" />
              <asp:BoundField DataField="Course_Name" HeaderText="Course Name" ItemStyle-Width="150" ReadOnly="True" />           
                     <asp:BoundField DataField="Section_Number" HeaderText="Section" ItemStyle-Width="150" ReadOnly="True" />
                     <asp:BoundField DataField="Day" HeaderText="Day" ItemStyle-Width="150" ReadOnly="True" />
                     <asp:BoundField DataField="S_Time" HeaderText="Start" ItemStyle-Width="150" ReadOnly="True" />
             <asp:BoundField DataField="E_Time" HeaderText="End Time" ItemStyle-Width="150" ReadOnly="True" />

        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="btnBind" runat="server" Text="Show selected courses" OnClick="btnBind_Click" />
    <br /><br />
    <asp:Label ID="lblmsg" runat="server" />
    </asp:Panel>
</asp:Content>
