<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cau3.aspx.cs" Inherits="Cau3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 500px;
            height: 222px;
        }
        .auto-style6 {
            width: 204px;
        }
        .auto-style7 {
            height: 66px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style5">
        <tr>
            <td colspan="2" style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" rowspan="3" style="text-align: right">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Value="1">Admin</asp:ListItem>
                    <asp:ListItem Selected="True" Value="0">User</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
        </tr>
    </table>
</asp:Content>

