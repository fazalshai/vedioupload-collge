<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="interface.aspx.cs" Inherits="vedioupload_collge._interface" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
&nbsp;
            <br />
            &nbsp; Title
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
&nbsp; description<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;<br />
&nbsp;level of course<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            prerequisites<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            ppt<asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <br />
&nbsp;vedio&nbsp;
            <asp:FileUpload ID="FileUpload2" runat="server" />
            <br />
            <br />
            <br />
&nbsp;
            <asp:Button ID="Button1" runat="server" Height="39px" OnClick="Button1_Click" Text="upload" Width="121px" BackColor="Black" ForeColor="White" />
&nbsp;
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Height="173px" Width="969px" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="tit" HeaderText="Title" SortExpression="tit" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="des" HeaderText="Description" SortExpression="des" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="lev" HeaderText="level of course" SortExpression="lev" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pre" HeaderText="Prerequisites" SortExpression="pre" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="PDF">
                        <ItemTemplate>
                            <img src="images/<%#Eval("ppt") %>" style="width:80px;height:100px;" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField  HeaderText="Vedio">
                        <ItemTemplate>
                            <video height="250" width="250 " controls>
                            <source src="images/<%#Eval("ved") %>" type="video/mp4" />
                                </video>
                        </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                 
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString %>" SelectCommand="SELECT * FROM [ve]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
