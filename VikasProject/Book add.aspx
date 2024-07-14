<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book add.aspx.cs" Inherits="VikasProject.Book_add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            height: 506px;
        }
        .auto-style3 {
            text-align: center;
            background-color: #000066;
            height: 631px;
            width: 1828px;
        }
        .auto-style11 {
            color: #FFFFFF;
            background-color: #000066;
        }
        .auto-style5 {
            color: #FFFFFF;
            font-size: xx-large;
            background-color: #000066;
        }
        .auto-style12 {
            background-color: #FFCC99;
            text-align: center;
            font-size: x-large;
        }
        .auto-style21 {
            background-color: #FFCC99;
            height: 12px;
            text-align: center;
            width: 963px;
            font-size: medium;
        }
        .auto-style13 {
            background-color: #FFCC99;
            height: 12px;
            text-align: left;
        }
        .auto-style14 {
            background-color: #FFCC99;
            text-align: center;
            width: 963px;
            font-size: medium;
        }
        .auto-style6 {
            background-color: #FFCC99;
            text-align: left;
        }
        .auto-style22 {
            background-color: #FFCC99;
            text-align: center;
            width: 963px;
            height: 39px;
            font-size: medium;
        }
        .auto-style23 {
            background-color: #FFCC99;
            text-align: left;
            height: 39px;
        }
        .auto-style16 {
            background-color: #FFCC99;
            text-align: center;
            width: 963px;
            height: 29px;
            font-size: medium;
        }
        .auto-style17 {
            background-color: #FFCC99;
            text-align: left;
            height: 29px;
        }
        .auto-style18 {
            background-color: #FFCC99;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            background-color: #000066;
            width: 1828px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style9 {
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
        <table>
            <tr>
                <td class="auto-style3"><strong>
                    <br class="auto-style11" />
                    <span class="auto-style5">&nbsp;WORLD BOOK STORE ONLINE </span></strong>
                    <br class="auto-style11" />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style12" colspan="2"><strong>ADD BOOKS </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style21"><strong>BOOK CODE</strong></td>
                            <td class="auto-style13">
                                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="336px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <br />
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong>BOOK TITLE NAME</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox18" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong>AUTHOR</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox19" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong>GENRE</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox20" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"><strong>EDITION</strong></td>
                            <td class="auto-style6">
                                <asp:TextBox ID="TextBox21" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style22"><strong>TOTAL PRICE</strong></td>
                            <td class="auto-style23">
                                <asp:TextBox ID="TextBox22" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong>ENTRY NAME</strong></td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TextBox23" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16"><strong>QUANTITY</strong></td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TextBox24" runat="server" Height="29px" Width="334px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18" colspan="2">&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" CssClass="auto-style9" Font-Bold="True" ForeColor="#006600" Height="43px" OnClick="Button1_Click" Text="BOOK ADD" Width="303px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#99FF66" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" CssClass="auto-style9" Font-Bold="True" ForeColor="#996600" Height="43px" OnClick="Button1_Click" Text="BOOK EDIT" Width="303px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button4" runat="server" BackColor="#FFFF99" BorderColor="Black" BorderStyle="Groove" BorderWidth="3px" CssClass="auto-style9" Font-Bold="True" ForeColor="Red" Height="43px" OnClick="Button1_Click" Text="BOOK DELETE" Width="303px" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" colspan="2">
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <br />
                    <br />
                    <strong>&nbsp;<span class="auto-style10">Welcome to Online Store Books</span></strong><br class="auto-style10" />
                    <span class="auto-style10">Powered by</span><span class="auto-style9"><strong> Indian Tech Softwares</strong></span><strong> <span class="auto-style10">(Run bu VIKAS)</span><br class="auto-style2" />
                    </strong></td>
            </tr>
        </table>
    </form>
</body>
</html>
